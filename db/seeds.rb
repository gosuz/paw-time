go = User.new(email: "go.suz55@gmail.com", password: "123456")
go.save

nina = User.new(email: "karenina2798@gmail.com", password: "123456")
nina.save

sarah = User.new(email: "sealove14@aim.com", password: "123456")
sarah.save

hellen = User.new(email: "hellen.tamara@outlook.com", password: "123456")
hellen.save

5.times do |t|
  user = User.new(email: "#{Faker::Name.first_name}@gmail.com", password: "123456")
  user.save
end

User.all.each do |user|
  rand(1..3).times do |t|
    shelter = Shelter.new(name: Faker::Company.name, location: Faker::Address.street_name, capacity: rand(1..4), logo: "https://ibb.co/xL3xdbL", banner: "https://source.unsplash.com/random/?pets&#{rand(1..20)}", description:  Faker::Company.catch_phrase)
    shelter.user = user
    shelter.save
  end
end

Shelter.all.each do |shelter|
  dog = Pet.new(name: Faker::FunnyName.name, species: "dog", image: "https://file.notion.so/f/f/0a4706dc-5fc2-4b5d-b45e-923f999c0e2f/660d4b38-5235-45ff-aa1a-904f749b8153/697280b8b0d84fd2fc848b5b723b5b04.jpeg?id=fbfdd984-818d-489b-b1dc-a5a48e943382&table=block&spaceId=0a4706dc-5fc2-4b5d-b45e-923f999c0e2f&expirationTimestamp=1708509600000&signature=e4bTFm_CtIhZGH3gU3Q2hkwfY2TRoZ3tKTw1EInSy4g&downloadName=697280b8b0d84fd2fc848b5b723b5b04.jpeg")
  dog.shelter = shelter
  dog.save

  cat = Pet.new(name: Faker::FunnyName.name, species: "cat", image: "https://file.notion.so/f/f/0a4706dc-5fc2-4b5d-b45e-923f999c0e2f/54ff6059-3009-44a3-9c5d-5ff28b4f5aee/Untitled.png?id=d277ad62-995d-47d9-9f43-3705493b9870&table=block&spaceId=0a4706dc-5fc2-4b5d-b45e-923f999c0e2f&expirationTimestamp=1708509600000&signature=H6Zyk98pve_t_BBmOPw7NW_nlvlxkbEdeNRBEn7Csuw&downloadName=Untitled.png")
  cat.shelter = shelter
  cat.save
end

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
