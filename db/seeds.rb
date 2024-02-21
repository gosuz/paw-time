puts "Creating main users..."
go = User.new(email: "go.suz55@gmail.com", password: "123456")
go.save

nina = User.new(email: "karenina2798@gmail.com", password: "123456")
nina.save

sarah = User.new(email: "sealove14@aim.com", password: "123456")
sarah.save

hellen = User.new(email: "hellen.tamara@outlook.com", password: "123456")
hellen.save

puts "Generating other users..."
5.times do |t|
  user = User.new(email: "#{Faker::Name.first_name}@gmail.com", password: "123456")
  user.save
end

puts "Creating shelters..."
User.all.each do |user|
  2.times do |t|
    shelter = Shelter.new(name: Faker::Company.name, location: Faker::Address.street_name, capacity: rand(1..4), logo: "https://ibb.co/xL3xdbL", banner: "https://source.unsplash.com/random/?building&#{rand(1..20)}", description: Faker::Company.catch_phrase)
    shelter.user = user
    shelter.save
  end
end

puts "Creating pets..."
Shelter.all.each do |shelter|
  rand(1..3).times do |t|
    dog = Pet.new(name: Faker::FunnyName.name, species: "dog", image: "https://source.unsplash.com/random/?cute-dog&#{rand(1..20)}")
    dog.shelter = shelter
    dog.save
  end

  rand(1..3).times do |t|
    cat = Pet.new(name: Faker::FunnyName.name, species: "cat", image: "https://source.unsplash.com/random/?cute-cat&#{rand(1..20)}")
    cat.shelter = shelter
    cat.save
  end
end

puts "Generating bookings shelters..."
reason = ["Volunteer", "Visit Only", "Adoption"]
status = [false, true]
timeSlot = ["13:00 to 14:00", "14:00 to 15:00", "12:00 to 13:00"]

Shelter.all.each do |shelter|
  rand(1..5).times do |t|
    booking = Booking.new(date: Date.today+rand(100), reason: reason.sample, status: status.sample, time_slot: timeSlot.sample)
    booking.shelter = shelter
    booking.user = User.all.sample
    booking.save
  end
end
