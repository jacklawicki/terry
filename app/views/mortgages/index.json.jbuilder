json.array!(@mortgages) do |mortgage|
  json.extract! mortgage, :id, :description, :value
  json.url mortgage_url(mortgage, format: :json)
end
