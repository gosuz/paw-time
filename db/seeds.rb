puts "Creating main users..."
go = User.new(email: "go.suz55@gmail.com", password: "123456", name: "Go Suzuki")
go.save

nina = User.new(email: "karenina2798@gmail.com", password: "123456", name: "Nina Wongsordjo")
nina.save

sarah = User.new(email: "sealove14@aim.com", password: "123456", name: "Sarah Amour")
sarah.save

hellen = User.new(email: "hellen.tamara@outlook.com", password: "123456", name: "Hellen Naito")
hellen.save

puts "Generating other users..."
user1 = User.new(email: "john.smith@example.com", password: "123456", name: "John Smith" )
user1.save
user2 = User.new(email: "emily.johnson@example.com", password: "123456", name: "Emily Johnson" )
user2.save
user3 = User.new(email: "michael.williams@example.com", password: "123456", name: "Michael Williams" )
user3.save
user4 = User.new(email: "sarah.brown@example.com", password: "123456", name: "Sarah Brown" )
user4.save
user5 = User.new(email: "david.jones@example.com", password: "123456", name: "David Jones" )
user5.save


puts "Creating shelters..."

shelter1 = Shelter.new(name: "Humane Society", location: "610 Abbot Ln, Colorado Springs, CO", capacity: 4, logo: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523159/jwrsu9ahbn5fyzwoqakf.png", banner: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708528064/bw78cu0r2oayzqfzlxjn.jpg", description: "At Humane Society, we believe in finding forever homes for every furry friend in need. Our adoption center provides a safe and nurturing environment for cats and dogs of all breeds and ages. With dedicated staff and volunteers, we strive to match each pet with the perfect family, ensuring a seamless transition into their new home.")
shelter1.user = go
shelter1.save

shelter02 = Shelter.new(name: "Pet Angel Gate", location: "Turkey Lake Rd, Orlando, FL", capacity: 4, logo: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523159/z6m8msmakq9uplkagsnp.png", banner: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708528064/w5zwxs1wew0ep3f46z1a.jpg", description: "Welcome to Pet Angel Gate, where every cat's purrfect match awaits! Our shelter specializes in rescuing and rehabilitating feline friends, offering a haven for cats of all shapes, sizes, and personalities. Whether you're looking for a playful kitten or a wise old tabby, we're here to help you find your new best friend.")
shelter02.user = nina
shelter02.save

shelter3 = Shelter.new(name: "Animal Haven", location: "Macklind Ave, St. Louis, MO", capacity: 4, logo: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523159/fq30g1wnx32vblulne9k.png", banner: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708528064/pjl5rs42z8ssfnd4sk2u.jpg", description: "Animal Haven is dedicated to providing a sanctuary for pets in need. Our shelter offers a haven for abandoned, abused, and neglected pups, giving them a second chance at a happy life. From energetic puppies to gentle seniors, we have a diverse range of dogs waiting to join loving families.")
shelter3.user = sarah
shelter3.save

shelter4 = Shelter.new(name: "Furry Friends Animal Society", location: "109 Commerce Dr, Levelland, TX", capacity: 4, logo: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523158/q4zggyg4bthaw6kaxjyq.png", banner: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708528063/nhaqo0p3gxjwzzizldmj.jpg", description: "Furry Friends Animal Society is where every pet's story begins anew. Our shelter specializes in rescuing and rehoming dogs and cats, offering a compassionate environment for animals in need. With personalized matchmaking services and ongoing support for adopters, we're dedicated to ensuring happy endings for every furry friend.")
shelter4.user = hellen
shelter4.save

shelter5 = Shelter.new(name: "Green Dog Rescue", location: "200 Locust Ave, Nyssa, OR", capacity: 4, logo: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523158/uoitcvz6n0nuvl1y7vgk.png", banner: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708528064/jfusq321ky7gw7n617o8.jpg", description: "Welcome to Green Dog Rescue, where every dog finds their purrfect paradise. Our shelter specializes in rescuing and rehoming canine friends, providing a safe and nurturing environment for dogs of all ages and backgrounds. Whether you're looking for a playful puppy or a mellow senior, we have the perfect companion waiting for you.")
shelter5.user = go
shelter5.save

shelter6 = Shelter.new(name: "Pet Pal Animal Shelter", location: "279 Joey Dr, Colchester, VT", capacity: 4, logo: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523158/oztobfft3epus9kv7hue.png", banner: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708528064/hzkha1a6tbkm2hrzpcnp.jpg", description: "Welcome to Pet Pal Animal Shelter, where dogs wag their tails and cats purr with contentment. Our shelter is a haven for both canine and feline companions, providing a loving environment for all. Whether you're a dog lover or a cat enthusiast, you'll find your perfect match here. Join us in our mission to give every paw and whisker a forever home filled with love and happiness.")
shelter6.user = hellen
shelter6.save

puts "Creating pets..."
dog1 = Pet.new(name: "Fluffy", species: "dog", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523162/sj0ict7cozranxmy72g5.png")
dog1.shelter = shelter1
dog1.save

dog2 = Pet.new(name: "Nugget", species: "dog", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523161/r9w9abl698tni19g0fdh.png")
dog2.shelter = shelter02
dog2.save

dog3 = Pet.new(name: "Spock", species: "dog", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523158/h2q5hkyokczy6nzjlavf.jpg")
dog3.shelter = shelter3
dog3.save

dog4 = Pet.new(name: "Pal", species: "dog", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523160/h3tygp1u2fe7wezegulw.png")
dog4.shelter = shelter4
dog4.save

dog5 = Pet.new(name: "Buddy", species: "dog", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523160/inesjl820vikdkkqjgjg.png")
dog5.shelter = shelter3
dog5.save

dog6 = Pet.new(name: "Scooby", species: "dog", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523161/mmbdr7fatvoxq0fmjfsf.png")
dog6.shelter = shelter1
dog6.save

dog7 = Pet.new(name: "Todo", species: "dog", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523160/h6vg9pur5z4jonlmujvz.png")
dog7.shelter = shelter3
dog7.save

dog8 = Pet.new(name: "Pepe", species: "dog", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708525944/tamas-pap-kA967nN0jAA-unsplash_cjvwkr.jpg")
dog8.shelter = shelter02
dog8.save

dog9 = Pet.new(name: "Rex", species: "dog", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708525944/stephen-andrews-lEe3-hTg4Vg-unsplash_ohmeiu.jpg")
dog9.shelter = shelter3
dog9.save

cat1 = Pet.new(name: "Gus", species: "cat", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708525599/Untitled_23_jqjbnl.png")
cat1.shelter = shelter1
cat1.save

cat2 = Pet.new(name: "King", species: "cat", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523162/qtittjzx2noomkzecibk.png")
cat2.shelter = shelter02
cat2.save

cat3 = Pet.new(name: "Tank", species: "cat", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523161/ma48ritiri5x1zfkprt5.png")
cat3.shelter = shelter4
cat3.save

cat4 = Pet.new(name: "Coco", species: "cat", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523159/dog9qgug4qql5x2zhvt5.png")
cat4.shelter = shelter4
cat4.save

cat5 = Pet.new(name: "Niko", species: "cat", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708523159/rdrkweqyoepjsaueoyux.png")
cat5.shelter = shelter3
cat5.save

cat6 = Pet.new(name: "Oreo", species: "cat", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708525945/svklimkin-XMxn_NkvnR0-unsplash_zlj3rr.jpg")
cat6.shelter = shelter1
cat6.save

cat7 = Pet.new(name: "Salem", species: "cat", image: "https://res.cloudinary.com/dyqkwf9t6/image/upload/v1708525945/dan-wayman-Kc_4NutJIV4-unsplash_ucuo6j.jpg")
cat7.shelter = shelter02
cat7.save

puts "Generating bookings shelters..."
reason = ["Volunteer", "Visit Only", "Adoption"]
status = ["Pending", "Confirmed", "Declined"]
timeSlot = ["10:00 ~ 12:00", "13:00~15:00", "16:00 ~ 18:00"]

Shelter.all.each do |shelter|
  rand(1..5).times do |t|
    booking = Booking.new(date: Date.today+rand(100), reason: reason.sample, status: status.sample, time_slot: timeSlot.sample)
    booking.shelter = shelter
    booking.user = User.all.sample
    booking.save
  end
end
