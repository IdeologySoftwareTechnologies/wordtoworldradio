json.array!(@daily_breads) do |daily_bread|
  json.extract! daily_bread, :id, :message, :date
  json.url daily_bread_url(daily_bread, format: :json)
end
