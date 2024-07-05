json.extract! bill, :id, :amount, :type, :employee_id, :created_at, :updated_at
json.url bill_url(bill, format: :json)
