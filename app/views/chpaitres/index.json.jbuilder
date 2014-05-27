json.array!(@chpaitres) do |chpaitre|
  json.extract! chpaitre, :id, :name, :numero
  json.url chpaitre_url(chpaitre, format: :json)
end
