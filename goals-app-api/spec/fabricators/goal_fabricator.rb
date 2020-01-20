require 'faker'

Fabricator(:goal) do
	goalname { Faker::JapaneseMedia::SwordArtOnline.item }
	completed false
	goal_date { Faker::Date.forward(days: 30) }
	importance { (Random.new.rand  * 10).floor }
	description { Faker::Games::WorldOfWarcraft.quote }
	steps(count: (Random.new.rand * 5).floor)
end