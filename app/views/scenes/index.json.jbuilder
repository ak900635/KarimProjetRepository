json.array!(@scenes) do |scene|
  json.extract! scene, :id, :period, :recit, :lieu
  json.url scene_url(scene, format: :json)
end
