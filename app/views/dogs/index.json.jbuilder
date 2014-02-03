json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :breed, :run_rate, :sit_rate, :age, :notes, :additional_dog, :account_id
  json.url dog_url(dog, format: :json)
end
