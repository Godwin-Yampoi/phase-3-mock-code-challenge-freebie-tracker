puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
# seeds.rb
dev1 = Dev.create(name: "John")
dev2 = Dev.create(name: "Jane")

company1 = Company.create(name: "Company A", founding_year: 2000)
company2 = Company.create(name: "Company B", founding_year: 2010)

Freebie.create(item_name: "Item 1", value: 100, dev: dev1, company: company1)
Freebie.create(item_name: "Item 2", value: 200, dev: dev1, company: company2)
Freebie.create(item_name: "Item 3", value: 150, dev: dev2, company: company1)


puts "Seeding done!"
