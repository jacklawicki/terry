json.array!(@vendorfinances) do |vendorfinance|
  json.extract! vendorfinance, :id, :description, :value
  json.url vendorfinance_url(vendorfinance, format: :json)
end
