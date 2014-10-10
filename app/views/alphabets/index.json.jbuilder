json.array!(@alphabets) do |alphabet|
  json.extract! alphabet, :id, :symbol, :explanation, :course_id
  json.url alphabet_url(alphabet, format: :json)
end
