json.array!(@clips) do |clip|
  json.extract! clip, :title, :description
  json.url clip_url(clip, format: :json)
end
