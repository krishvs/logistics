json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :phone, :account_id, :job_id
  json.url customer_url(customer, format: :json)
end
