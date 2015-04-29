json.array!(@shareportfolios) do |shareportfolio|
  json.extract! shareportfolio, :id, :description, :value
  json.url shareportfolio_url(shareportfolio, format: :json)
end
