json.array!(@teams) do |team|
  json.extract! team, :id, :name, :mascot, :city, :state, :wins, :loses, :url, :nickname, :conference_id, :pick_id, :game_id
  json.url team_url(team, format: :json)
end
