json.array!(@blog_programms) do |blog_programm|
  json.extract! blog_programm, :id
  json.url blog_programm_url(blog_programm, format: :json)
end
