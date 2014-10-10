json.array!(@signs) do |sign|
  json.extract! sign, :id, :character, :explanation, :alphabet_id
  json.url sign_url(sign, format: :json)
end
