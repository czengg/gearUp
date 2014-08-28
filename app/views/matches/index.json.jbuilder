json.array!(@matches) do |match|
  json.extract! match, :id, :location, :playerOneID, :playerTwoID, :sportID
  json.url match_url(match, format: :json)
end
