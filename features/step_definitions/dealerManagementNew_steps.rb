require_relative("../../features/support/dealerNew")
newDealer = DealerNEW.new

Given(/^I am on dealer management page$/) do
  newDealer.gotoArfloan
  newDealer.login($SUPER_Username, $SUPER_Password)
  newDealer.visitDealerPage()
end

When(/^I search create a new Dealer$/) do
 newDealer.createNewDealer()
end


Then(/^The (.*) Dealer is added to the list$/) do |new|
  newDealer.createNewDealerObject(new)
end