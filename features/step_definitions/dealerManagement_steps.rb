# Watir
require_relative("../../features/support/dealer")
dealerVar = Dealer.new

  Given(/^I am dealer management page$/) do
  dealerVar.gotoArfloan
  dealerVar.login($SUPER_Username, $SUPER_Password)
  dealerVar.visitDealerPage()
  end

  When(/^I search for a valid dealer (.*)$/) do |dealerName|
  dealerVar.enterDealerName(dealerName)
  end

  Then(/^I should see the (.*) dealer in the search result$/) do |germainToyota|
  dealerVar.verifyDealerName(germainToyota).should == true
  end


# # Selenium
# require("../../features/support/loginModule_Selenium")
# dealerSelenium = Login_Selenium.new
#
# Given(/^I am dealer management page$/) do
#   dealerSelenium.gotoArfloan
#   dealerSelenium.login($SUPER_Username, $SUPER_Password)
#   dealerSelenium.visitDealerPage()
# end
#
# When(/^I search for a valid dealer (.*)$/) do |dealerName|
#   dealerSelenium.enterDealerName(dealerName)
# end
#
# Then(/^I should see the (.*) dealer in the search result$/) do |germainToyota|
#   dealerSelenium.verifyDealerName(germainToyota).should == true
# end


