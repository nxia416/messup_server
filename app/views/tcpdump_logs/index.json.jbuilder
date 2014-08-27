json.array!(@tcpdump_logs) do |tcpdump_log|
  json.extract! tcpdump_log, :id, :user_id, :user_data
  json.url tcpdump_log_url(tcpdump_log, format: :json)
end
