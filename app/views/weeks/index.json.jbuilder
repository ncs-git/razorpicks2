json.array!(@weeks) do |week|
  json.extract! week, :id, :start, :end, :due_by, :name, :current, :completed, :locked, :season_id
  json.url week_url(week, format: :json)
end
