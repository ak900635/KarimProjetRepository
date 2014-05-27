json.array!(@chapitres) do |chapitre|
  json.extract! chapitre, :name, :numero
  json.url chapitre_url(chapitre, format: :json)
end