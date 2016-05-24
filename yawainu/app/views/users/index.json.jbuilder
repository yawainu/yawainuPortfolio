json.array!(@users) do |user|
  json.extract! user, :id, :email, :title, :comment, :crypted_password, :salt
  json.url user_url(user, format: :json)
end
