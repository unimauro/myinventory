json.extract! inventory, :id, :due, :user_id, :car_id, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
