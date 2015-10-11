require "selenium-webdriver"

class HomePage

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://demo.broadleafcommerce.org"


  LoginLink = driver.find_element :xpath, "//*[@id='cart_info']//*[text()='Login']"
  LoginLink.click

  emailAddress = driver.find_element :css, "[name=j_username]"
  passWord = driver.find_element :css, "[name=j_password]"

sleep 2
  emailAddress.send_keys("mishawn123@abc.com")
  passWord.send_keys("asdf1234")

  loginBtn = driver.find_element :css, "[value=Login]"
  loginBtn.click

  verifyUser = driver.find_element :css, ".my-account"
  puts verifyUser.text


end
