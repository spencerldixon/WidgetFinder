task :populate => :environment do
	postcodes = ['YH7 4FN', 'S6H 9PU', 'Y4V 9YP', 'ZE1 1LN', 'G0 5BJ', 'W9N 0JR', 'NG24 3WE']

	7.times do |n|
		Widget.create!(
			title: Faker::Company.name,
			postcode: postcodes[n], # Can't rely on Faker to generate valid postcodes.
			description: Faker::Lorem.paragraph,
			price: Faker::Number.number(2)
		)
	end

	puts "Created 7 new widgets in the database!"
end