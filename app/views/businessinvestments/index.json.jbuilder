json.array!(@businessinvestments) do |businessinvestment|
  json.extract! businessinvestment, :id, :description, :value
  json.url businessinvestment_url(businessinvestment, format: :json)
end
