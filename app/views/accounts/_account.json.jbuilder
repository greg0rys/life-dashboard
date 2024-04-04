json.extract! account, :id, :accountnum, :accounttype, :accountbalance, :bankname, :created_at, :updated_at
json.url account_url(account, format: :json)
