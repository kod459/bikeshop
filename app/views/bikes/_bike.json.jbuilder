json.extract! bike, :id, :name, :maker, :size, :price, :description, :picture, :category_id, :customer_id, :created_at, :updated_at
json.url bike_url(bike, format: :json)