json.array!(@webhook_logs) do |webhook_log|
  json.extract! webhook_log, :id
  json.url webhook_log_url(webhook_log, format: :json)
end
