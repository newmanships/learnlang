json.array!(@sections) do |section|
  json.extract! section, :id, :title, :course_id
  json.url section_url(section, format: :json)
end
