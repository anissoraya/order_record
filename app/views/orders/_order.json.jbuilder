json.extract! order, :id, :item_id, :quantity, :customer_id, :order_date, :order_day, :created_at, :updated_at
json.url order_url(order, format: :json)