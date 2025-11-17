import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import requests

@pytest.mark.sanity
def test_broken_links_images():
    driver = webdriver.Chrome()
    driver.get("https://practicesoftwaretesting.com/")
    wait = WebDriverWait(driver, 10)

    # Wait for links
    links = wait.until(EC.presence_of_all_elements_located((By.TAG_NAME, "a")))
    print(f"Total links found: {len(links)}")

    for link in links:
        url = link.get_attribute("href")
        if not url:
            continue
        try:
            response = requests.head(url, allow_redirects=True, timeout=5)
            if response.status_code >= 400:
                print(f"❌ Broken link: {url} (Status: {response.status_code})")
            else:
                print(f"✅ Valid link: {url} (Status: {response.status_code})")
        except Exception as e:
            print(f"⚠️ Error checking link {url}: {e}")

    # Wait for images
    images = wait.until(EC.presence_of_all_elements_located((By.TAG_NAME, "img")))
    print(f"\nTotal images found: {len(images)}")

    for img in images:
        src = img.get_attribute("src")
        if not src:
            continue
        try:
            response = requests.head(src, allow_redirects=True, timeout=5)
            if response.status_code >= 400:
                print(f"❌ Broken image: {src} (Status: {response.status_code})")
            else:
                print(f"✅ Valid image: {src} (Status: {response.status_code})")
        except Exception as e:
            print(f"⚠️ Error checking image {src}: {e}")

    driver.quit()
