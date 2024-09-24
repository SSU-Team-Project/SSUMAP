import time
import firebase_admin
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.service import Service
from firebase_admin import credentials, firestore

cred = credentials.Certificate(r'firebase_key.json')
firebase_admin.initialize_app(cred)
db = firestore.client()

username = "***"  # ** 인스타그램 로그인 아이디
password = "***"  # ** 인스타그램 비밀번호
target_user = "ussum_64th"  # 타겟 인스타그램 유저
driver_path = r"/opt/homebrew/bin/chromedriver"  # ** 크롬 드라이버 경로

service = Service()
driver = webdriver.Chrome(service=service)

try:
    driver.get("https://www.instagram.com/accounts/login/")
    time.sleep(2)
    username_input = driver.find_element(By.NAME, "username")
    password_input = driver.find_element(By.NAME, "password")
    username_input.send_keys(username)
    password_input.send_keys(password)
    password_input.send_keys(Keys.RETURN)
    time.sleep(5)

    doc_ref = db.collection("instargram").document("US:SUM")
    try:
        doc = doc_ref.get()
        if doc.exists:
            last = doc.to_dict().get('last_content', 'No data found')
        else:
            print("No such document!")
            last = ''
    except Exception as e:
        print("Error reading document:", e)
        last = ''
    driver.get(f"https://www.instagram.com/{target_user}/")
    time.sleep(5)

    index = 1
    first = ''
    hes = True
    while hes:
        post = driver.find_element(By.XPATH, f"(//a[contains(@href, '/p/')])[{index}]")
        post_url = post.get_attribute("href")
        driver.get(post_url)
        time.sleep(3)

        try:
            time.sleep(3)
            description = driver.find_element(By.XPATH,
                                              "//span[contains(@style,'18px') and (contains(text(), '[') or contains(text(), 'US:SUM'))]").text
            if index == 1:
                first = description

            # 새로운 문서에 내용 저장
            new_doc_ref = db.collection("instargram").document()
            new_doc_ref.set({
                'content': description,
                'timestamp': firestore.SERVER_TIMESTAMP
            })

            time.sleep(3)
            if description == last:
                doc_ref.update({
                    'last_content': first
                })
                hes = False
            index += 1
            driver.back()
            time.sleep(3)
        except Exception as e:
            print("No description found or error occurred:", e)
            break

finally:
    driver.quit()
