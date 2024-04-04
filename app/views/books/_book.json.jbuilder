json.extract! book, :id, :title, :finished, :finishdate, :rate, :created_at, :updated_at
json.url book_url(book, format: :json)
