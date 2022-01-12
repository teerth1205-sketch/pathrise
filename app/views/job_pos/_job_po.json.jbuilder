json.extract! job_po, :id, :ids, :title, :companyName, :url, :created_at, :updated_at
json.url job_po_url(job_po, format: :json)
