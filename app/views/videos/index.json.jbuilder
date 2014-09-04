json.array!(@videos) do |video|
  json.extract! video, :id, :name, :video
  json.url video_url(video, format: :json)
end
