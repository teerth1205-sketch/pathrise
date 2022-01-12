json.extract! job, :id, :title, :companyName, :url, :source, :created_at, :updated_at
json.url job_url(job, format: :json)
