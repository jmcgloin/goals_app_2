
Fabricator(:user) do
	# username { Faker::Name.name }
	username 'Test'
	email { Faker::Internet.email }
	password { Faker::Games::Pokemon.name }
	goals(count:2)
end