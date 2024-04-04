json.extract! transaction, :id, :name, :credit, :debit, :amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
