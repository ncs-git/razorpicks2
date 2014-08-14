json.array!(@results) do |result|
  json.extract! result, :id, :wins, :loses, :tiebreak_score, :week_id, :season_id, :user_id
  json.url result_url(result, format: :json)
end
