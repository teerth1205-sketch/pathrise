require 'csv'  

namespace :my_namespace do
  desc "TODO"
  task my_task1: :environment do
     

csv_text = File.read('C:\Users\tscri\Downloads\JobsAvailable.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  JobPo.create!(row.to_hash)
end
end

end
