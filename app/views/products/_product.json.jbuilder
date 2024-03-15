json.extract! product, :id, :name, :value, :description, :quantify, :company_id, :user_id, :client_id, :created_at, :updated_at
json.url product_url(product, format: :json)
