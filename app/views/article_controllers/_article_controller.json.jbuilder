json.extract! article_controller, :id, :title, :body, :description, :isPublished, :publishedAt, :created_at, :updated_at
json.url article_controller_url(article_controller, format: :json)
