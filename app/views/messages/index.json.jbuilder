json.array!(@messages) do |message|
  json.extract! message, :id, :body, :sender_id, :created_at
end
