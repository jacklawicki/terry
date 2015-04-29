json.array!(@cashes) do |cash|
  json.extract! cash, :id, :description, :value
  json.url cash_url(cash, format: :json)
end
