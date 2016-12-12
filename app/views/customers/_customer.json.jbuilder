json.extract! customer, :id, :name, :company, :phone, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)