json.array!(@games) do |game|
  json.extract! game, :id, :title, :rate
  json.url game_url(game, format: :json)
end
