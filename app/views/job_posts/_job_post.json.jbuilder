json.extract! job_post, :id, :id, :title, :companyName, :url, :created_at, :updated_at
json.url job_post_url(job_post, format: :json)
