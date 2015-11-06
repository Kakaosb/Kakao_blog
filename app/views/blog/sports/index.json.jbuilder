json.array!(@blog_sports) do |blog_sport|
  json.extract! blog_sport, :id
  json.url blog_sport_url(blog_sport, format: :json)
end
