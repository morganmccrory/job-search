require 'csv'

# seed the locations
csv_text = File.read(Rails.root.join('db', 'locations.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Location.create!(city: row['city'], state: row['state'])
end

# seed the companies
csv_text = File.read(Rails.root.join('db', 'companies.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Company.create!(name: row['name'])
end

# seed the categories
categories = ["Account Management", "Business & Strategy", "Creative & Design", "Customer Service", "Data Science", "Editorial", "Education", "Engineering", "Finance", "Fundraising & Development", "Healthcare & Medicine", "HR & Recruiting", "Legal", "Marketing & PR", "Operations", "Project & Product Management", "Retail", "Sales", "Social Media & Community"]
categories.each do |category|
  Category.create!({name: category})
end

#seed the levels
levels = ["Internship", "Entry Level", "Mid Level", "Senior Level"]
levels.each do |level|
  Level.create!({name: level})
end