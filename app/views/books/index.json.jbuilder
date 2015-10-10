json.array!(@books) do |book|
  json.extract! book, :id, :title, :wikipedia, :goodreads
  json.url book_url(book, format: :json)
end
