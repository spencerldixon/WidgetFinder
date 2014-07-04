task :populate => :environment do
	5.times do |n|
		Widget.create!(
			title: Faker::Company.name,
			postcode: Faker::Address.postcode,
			description: Faker::Lorem.paragraph,
			price: Faker::Number.number(2)
		)
	end

	puts "Created 5 new widgets in the database!"
end