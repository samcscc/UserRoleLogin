require_relative("../support/Login")

loginObj = Login.new()

Given(/^I am logged in as (.*)$/) do |userType|
  loginObj.gotoArfloan()
  if(userType =="superuser")
  loginObj.login($SUPER_Username, $SUPER_Password)
  elsif(userType =="dealer")
    loginObj.login($DEALER_Username, $DEALER_Password)
  elsif(userType =="lender")
    loginObj.login($LENDER_Username, $LENDER_Password)
  end
end

Then(/^I should see the (.*) homepage$/) do |userType|
  loginObj.verifyCredentials(userType).should == true
end