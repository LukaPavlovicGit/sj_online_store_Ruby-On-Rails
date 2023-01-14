json.extract! voucher, :id, :user_id, :value, :comment, :created_at, :updated_at
json.url voucher_url(voucher, format: :json)
