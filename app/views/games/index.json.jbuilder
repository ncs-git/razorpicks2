json.array!(@games) do |game|
  json.extract! game, :id, :home_team_id, :away_team_id, :home_score, :away_score, :played_on, :kickoff, :complete, :locked, :tiebreaker, :summary_url, :preview_url, :line, :name, :venue, :location, :week_id
  json.url game_url(game, format: :json)
end
