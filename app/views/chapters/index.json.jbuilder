json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :chapter_number, :chapter_image, :chapter_audio, :bible_id, :admin_id, :status
  json.url chapter_url(chapter, format: :json)
end
