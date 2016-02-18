json.array!(@articles) do |article|
  json.extract! article, :id, :title, :slug, :body, :body_html, :active, :approved_comments_count, :cached_tag_list, :published_at, :edited_at
  json.url article_url(article, format: :json)
end
