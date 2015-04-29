json.array!(@entities) do |entity|
  json.extract! entity, :id, :money, :money_owing, :term_deposit, :share_portfolio, :property, :bus_investment, :vendor_finance, :mortgage, :details, :amount
  json.url entity_url(entity, format: :json)
end
