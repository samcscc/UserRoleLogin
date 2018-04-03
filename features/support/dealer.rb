Watir
require_relative("Login")
class Dealer < Login
  def visitDealerPage
    @browser.link(:id => "ctl00_MainContent_AdminNav_lnkDealerManagement").click
  end

  def enterDealerName(dealerName)
    @browser.text_field(:id => "ctl00_MainContent_txtSearchCriteria").set dealerName
    @browser.link(:id => "ctl00_MainContent_btnSearch1").click

  end

  def verifyDealerName(germainToyota)
    @browser.link(:id => "ctl00_MainContent_DealerSearchResult1_grdResults_ctl04_lnkShopName").text.include? germainToyota.to_s

  end
end
#Selinum
# require("loginModule_Selenium")
# class Dealer < Login_Selenium
#   def visitDealerPage
#     @browser.find_element(:id => "ctl00_MainContent_AdminNav_lnkDealerManagement").click
#   end
#
#   def enterDealerName(dealerName)
#     @browser.find_element(:id => "ctl00_MainContent_txtSearchCriteria").send_keys dealerName
#     @browser.find_element(:id => "ctl00_MainContent_btnSearch1").click
#
#   end
#
#   def verifyDealerName(germainToyota)
#     @browser.find_element(:id => "ctl00_MainContent_DealerSearchResult1_grdResults_ctl04_lnkShopName").text.displayed? germainToyota.to_s
#
#   end
# end

#



