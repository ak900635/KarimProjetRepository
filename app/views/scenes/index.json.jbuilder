json.array!(@scenes) do |scene|
  json.extract! scene, :period, :recit, :lieu, :chapitre_id
  json.url scene_url(scene, format: :json)
end