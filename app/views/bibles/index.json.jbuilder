json.array!(@bibles) do |bible|
  json.extract! bible, :id, :name, :bible_cover, :admin_id, :status
  json.url bible_url(bible, format: :json)
end
