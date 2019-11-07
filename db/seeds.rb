require 'faker'
p "---------- START CLEAN THE DATABASE ----------"
User.destroy_all
p "Users are clean"
Event.destroy_all
p "Events are clean"
#Attendance.destroy_all
#p "Attendances are clean"
p "---------- END CLEAN THE DATABASE ----------"
p "---------------- START SEED ----------------"
User.create(first_name: "Loulou", last_name:Faker::Name.last_name, description:Faker::Lorem.paragraph, email: "loulou@yopmail.com",password:"password", password_confirmation:"password")
puts 'User created'
20.times do
	Event.create(start_date: Faker::Date.forward(days: 365), duration: rand(6..1000)*5, administrator_id: User.all.sample.id, price: rand(5..1000), description:Faker::Lorem.paragraph, title: Faker::Movies::StarWars.quote, location: Faker::Address.city)
end
puts 'Events created'
