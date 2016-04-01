json.array!(@multis) do |multi|
  json.extract! multi, :id, :user_id
  json.url multi_url(multi, format: :json)
end
