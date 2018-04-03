
#This moudule uses Selenum web Driver
class Login_Selenium
  def initialize
    @browser = Selenium::WebDriver.for(:chrome)
  end

  def gotoArfloan()
    @browser.navigate.to($arfloanUrl)
  end

  def login(username, password)
    @browser.find_element(:id => "ctl00_MainContent_txtUserName").send_keys username
    @browser.find_element(:id => "ctl00_MainContent_txtPassword").send_keys password
    @browser.find_element(:id => "ctl00_MainContent_btnLogIn").click
  end

  def verifyCredentials(userType)
    if(userType =="dealer")
      @browser.find_element(:id => "ctl00_MainContent_DealerNav_lnkCalculator").displayed?
    elsif(userType =="lender")
      @browser.find_element(:id => "ctl00_MainContent_LenderNav_lnkLenderHome").displayed?
    elsif(userType =="superuser")
      @browser.find_element(:id => "ctl00_MainContent_AdminNav_lnkDealerManagement").displayed?
    end
  end
end