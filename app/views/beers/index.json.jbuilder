json.array!(@beers) do |beer|
  json.extract! beer, :id, :distributor, :brewery, :product, :quantity, :draft, :tent, :equipment, :notes, :rep, :location
  json.url beer_url(beer, format: :json)
end
