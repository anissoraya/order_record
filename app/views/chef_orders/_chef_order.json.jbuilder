json.extract! chef_order, :id, :chef_id, :order_id, :amount_cook, :created_at, :updated_at
json.url chef_order_url(chef_order, format: :json)