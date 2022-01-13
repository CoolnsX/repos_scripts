from selenium import webdriver
import sys

try:
    chromeop = webdriver.FirefoxOptions()
    chromeop.add_argument("--headless")
    temp = webdriver.Firefox(options=chromeop)
    temp.get(sys.argv[1])
    print(temp.page_source)
finally:
    try:
        temp.close()
    except:
        pass
