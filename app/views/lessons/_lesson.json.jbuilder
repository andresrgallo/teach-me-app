json.extract! lesson, :id, :user_id, :category_id, :description, :price_hr, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
