json.extract! submission, :id, :title, :deadline, :remarks, :year, :created_at, :updated_at
json.url submission_url(submission, format: :json)
