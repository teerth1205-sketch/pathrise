json.extract! job_posting, :id, :title, :companyName, :url, :created_at, :updated_at
json.url job_posting_url(job_posting, format: :json)
