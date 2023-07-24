class MerchantsController < ApplicationController
  def index
    @merchant = MerchantsFacade.new.merchants
  end

  def show
    @merchant_items = MerchantsFacade.new.merchant(params[:id])
  end
end