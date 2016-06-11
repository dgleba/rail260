json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :name, :description, :output, :rental_record_id
  json.url passenger_url(passenger, format: :json)
end
