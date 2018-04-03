class Login
  def initialize
    @browser = Watir::Browser.new :chrome
  end
  def gotoArfloan()
    @browser.goto($arfloanUrl)
  end
  def login(username, password)
    @browser.text_field(:id => "ctl00_MainContent_txtUserName").set username
    @browser.text_field(:id => "ctl00_MainContent_txtPassword").set password
    @browser.link(:id => "ctl00_MainContent_btnLogIn").click
  end

  def verifyCredentials(userType)
    if(userType =="dealer")
      @browser.link(:id => "ctl00_MainContent_DealerNav_lnkCalculator").visible?
    elsif(userType =="lender")
      @browser.link(:id => "ctl00_MainContent_LenderNav_lnkLenderHome").visible?
    elsif(userType =="superuser")
      @browser.link(:id => "ctl00_MainContent_AdminNav_lnkDealerManagement").visible?
    end
  end
end