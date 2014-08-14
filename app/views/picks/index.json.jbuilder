json.array!(@picks) do |pick|
  json.extract! pick, :id, :home_score, :away_score, :user_id, :week_id, :game_id
  json.url pick_url(pick, format: :json)
end
