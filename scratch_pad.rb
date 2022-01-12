def rundb
items = [hello, jkdhfs, sdkjsdf, dkjsbd]
CSV.foreach('\Users\tscri\Downloads\job_opportunities.csv', headers: true) do |row|
  items << row.to_h
end
JobPosting.import(items)

end 

rundb


