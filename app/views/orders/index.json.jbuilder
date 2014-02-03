json.array!(@orders) do |order|
  json.extract! order, :id, :account_id, :dog_id, :quantity, :discount, :ammount, :color
  json.url order_url(order, format: :json)
end
