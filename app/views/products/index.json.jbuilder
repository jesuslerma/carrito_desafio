json.array!(@products) do |product|
  json.extract! product, :id, :name, :stock, :photo, :category_id, :price, :store_id
  json.url product_url(product, format: :json)
end
