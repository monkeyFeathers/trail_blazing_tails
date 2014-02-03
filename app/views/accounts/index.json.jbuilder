json.array!(@accounts) do |account|
  json.extract! account, :id, :territory, :vet, :active, :emergency_vet, :gold_run_credits, :silver_run_credits
  json.url account_url(account, format: :json)
end
