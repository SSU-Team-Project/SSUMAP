from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager
from bs4 import BeautifulSoup
import time
import schedule

# Setup Chrome options
chrome_options = Options()
chrome_options.add_argument("--headless")  # Run in headless mode
chrome_options.add_argument("--disable-gpu")
chrome_options.add_argument("--no-sandbox")


# Function to crawl Instagram posts
def crawl_instagram():
    driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=chrome_options)

    # Open the Instagram profile page
    driver.get("https://www.instagram.com/ussum_64th/")

    # Scroll down to load more posts
    last_height = driver.execute_script("return document.body.scrollHeight")
    while True:
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        time.sleep(2)  # Wait for the page to load
        new_height = driver.execute_script("return document.body.scrollHeight")
        if new_height == last_height:
            break
        last_height = new_height

    # Extract post text
    soup = BeautifulSoup(driver.page_source, 'html.parser')
    posts = soup.find_all('div', class_='C4VMK')
    post_texts = [post.get_text(separator=" ").strip() for post in posts]

    # Close the driver
    driver.quit()

    return post_texts


# Function to check for new posts and update
def check_for_new_posts():
    global previous_posts
    current_posts = crawl_instagram()

    new_posts = [post for post in current_posts if post not in previous_posts]

    if new_posts:
        print("New posts found:")
        for post in new_posts:
            print(post)
    else:
        print("No new posts found.")

    # Update the previous posts list
    previous_posts = current_posts


# Initial crawl to populate previous_posts
previous_posts = crawl_instagram()

# Schedule the crawler to run every hour
schedule.every(1).hours.do(check_for_new_posts)

print("Instagram web crawler started. Checking for new posts every hour…")

while True:
    schedule.run_pending()
    time.sleep(1)