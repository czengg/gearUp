json.array!(@ranks) do |rank|
  json.extract! rank, :id, :playerID, :sportID, :position
  json.url rank_url(rank, format: :json)
end
