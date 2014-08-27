json.array!(@iptable_logs) do |iptable_log|
  json.extract! iptable_log, :id, :user_id, :user_data
  json.url iptable_log_url(iptable_log, format: :json)
end
