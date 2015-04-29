json.array!(@moneyowings) do |moneyowing|
  json.extract! moneyowing, :id, :description, :value
  json.url moneyowing_url(moneyowing, format: :json)
end
