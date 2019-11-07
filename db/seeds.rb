p "---------- START CLEAN THE DATABASE ----------"
User.destroy_all
p "Users are clean"
Event.destroy_all
p "Events are clean"
#Attendance.destroy_all
#p "Attendances are clean".colorize(:red)
p "---------- END CLEAN THE DATABASE ----------"
p ""
p ""
p "---------------- START SEED ----------------"
p ""
sleep(2)

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  User.create!(
    first_name: first_name,
    last_name: last_name,
    password: Faker::Internet.password(min_length: 8),
    email: Faker::Internet.email(name: "#{last_name} #{first_name}", separators: '.')
  )
end

tp User.all
p "\nThe database has now #{User.count} users\n"
sleep(5)

duration = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60]
20.times do
  Event.create!(
    start_date: Faker::Date.forward(days: 15),
    duration: duration.sample.to_i,
    title: Faker::GreekPhilosophers.quote,
    description: Faker::Lorem.sentence(word_count: 15, supplemental: true, random_words_to_add: 30),
    price: Faker::Commerce.price,
    location: Faker::Address.full_address
    # administrator:
  )
end

tp Event.all
p "\nThe database has now #{Event.count} events\n"
sleep(5)

#30.times do
#  Attendance.create!(
#    user: User.all.sample,
#    event: Event.all.sample
#  )
#end

#tp Attendance.all
#p "\nThe database has now #{Attendance.count} attendances\n".colorize(:yellow)
#sleep(5)

p "---------------- END SEED ----------------"