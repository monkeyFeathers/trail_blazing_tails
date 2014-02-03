json.array!(@runs) do |run|
  json.extract! run, :id, :dog_id, :runner_id, :run_date, :duration, :map_url, :page, :value, :account_id
  json.url run_url(run, format: :json)
end
