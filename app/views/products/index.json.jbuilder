json.array!(@products) do |product|
  json.extract! product, :name, :series, :description, :specs, :brand, :sub_category_id, :remarks1, :remarks2, :remarks3, :remarks4
  json.url product_url(product, format: :json)
end