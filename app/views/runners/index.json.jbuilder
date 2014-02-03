json.array!(@runners) do |runner|
  json.extract! runner, :id, :first_name, :last_name, :territory, :run_pay_rate, :email, :phone_number, :address, :start_date
  json.url runner_url(runner, format: :json)
end
