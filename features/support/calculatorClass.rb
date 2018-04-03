
require_relative("Login")
class Calculator < Login
  def visitCalculatorePage
    @browser.link(:id => "ctl00_MainContent_DealerNav_lnkCalculator").click

  end
  def CalculateLoanPayment(loanAmount)
    @browser.text_field(:id => "ctl00_MainContent_txtLoanAmount").set loanAmount
    @browser.link(:id => "ctl00_MainContent_lnkCalculate").click

  end
  def verifyLoanAmount(monthlyPayment)
    @browser.span(:id => "ctl00_MainContent_lblMonthlyPayment").text.include? monthlyPayment.to_s

  end
end