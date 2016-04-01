json.array!(@jobs) do |job|
  json.extract! job, :id, :user_id, :time, :finished, :order, :multi_id, :distance, :checkin
  json.url job_url(job, format: :json)
end
