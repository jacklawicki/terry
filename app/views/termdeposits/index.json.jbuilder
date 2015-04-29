json.array!(@termdeposits) do |termdeposit|
  json.extract! termdeposit, :id, :description, :value
  json.url termdeposit_url(termdeposit, format: :json)
end
