json.array!(@dogs) do |dog|
  json.extract! dog, :id, :avatar, :location, :name, :breed, :age, :gender, :size, :contact_email
  json.url dog_url(dog, format: :json)
end
