require_relative("../support/calculatorClass")
c = Calculator.new


Given(/^I access Calculator function$/) do
  c.gotoArfloan
  c.login($DEALER_Username, $DEALER_Password)
  c.visitCalculatorePage()

end

When(/^I input (\d+) as loan amount$/) do |arg|
 c.CalculateLoanPayment(arg)

end

Then(/^I shall see (\d+) as monthly payment\.$/) do |arg|
  c.verifyLoanAmount(arg).should == true

end