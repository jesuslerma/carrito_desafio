json.array!(@carts) do |cart|
  json.extract! cart, :id, :total_price, :open, :user_id
  json.url cart_url(cart, format: :json)
end
