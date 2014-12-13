json.array!(@records) do |record|
  json.extract! record, :id, :xid, :content
  json.url record_url(record, format: :json)
end
