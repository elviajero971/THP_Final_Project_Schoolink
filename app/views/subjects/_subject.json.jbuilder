json.extract! subject, :id, :title, :content, :difficulty, :user_id, :created_at, :updated_at
json.url subject_url(subject, format: :json)
