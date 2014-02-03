json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :last_name, :email, :street, :city, :state, :zip_code, :phone_number, :second_phone, :notes
  json.url client_url(client, format: :json)
end
