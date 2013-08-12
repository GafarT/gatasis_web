json.array!(@relation_industries) do |relation_industry|
  json.extract! relation_industry, :industry_id, :product_id
  json.url relation_industry_url(relation_industry, format: :json)
end