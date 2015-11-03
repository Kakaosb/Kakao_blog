json.array!(@blog_arts) do |blog_art|
  json.extract! blog_art, :id
  json.url blog_art_url(blog_art, format: :json)
end
