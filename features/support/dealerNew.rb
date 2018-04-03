
require_relative("Login")
class DealerNEW < Login
  def visitDealerPage
    @browser.link(:id => "ctl00_MainContent_AdminNav_lnkDealerManagement").click
  end

  def createNewDealer
    @browser.link(:id => "ctl00_MainContent_btnAdd1").click

  end

  def createNewDealerObject(shopName)
    @browser.text_field(:id => "ctl00_MainContent_DealerDetail1_txtShopName").set shopName
    @browser.select_list(:id => "ctl00_MainContent_DealerDetail1_ddlDealerType").select "Body"
    @browser.select_list(:id => "ctl00_MainContent_DealerDetail1_ddlArfRep").select "Test Rep"
    @browser.link(:id => "ctl00_MainContent_DealerDetail1_lnkSave").click
  end

  # def verifyDealerName(germainToyota)
  #   @browser.link(:id => "ctl00_MainContent_DealerSearchResult1_grdResults_ctl04_lnkShopName").text.include? germainToyota.to_s
  #
  # end
end