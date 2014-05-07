json.array!(@requests) do |request|
  json.extract! request, :id, :url, :body, :method
  json.url request_url(request, format: :json)
end
