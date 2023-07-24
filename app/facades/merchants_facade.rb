class MerchantsFacade

  def service
    MerchantsService.new
  end

  def merchants
    json = service.merchants
    json[:data].map do |data|
      Merchant.new(data)
    end
  end

  def merchant(id)
    json = service.one_merchant(id)
  end
end