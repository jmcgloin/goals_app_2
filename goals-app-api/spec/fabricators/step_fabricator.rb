require 'faker'

Fabricator(:step) do
	stepname { Faker::Movies::HarryPotter.spell }
	description { Faker::Movies::HarryPotter.quote }
	metric { Faker::Movies::HarryPotter.location }
	minutes { (Random.new.rand * 120).floor }
end