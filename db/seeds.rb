Beacon.destroy_all
User.destroy_all

20.times do |i|
  beacon = Beacon.create!(name: Faker::GameOfThrones.house + " #{i}")
  p "#{beacon.name}"
end

p "Made #{Beacon.all.length} beacons"

20.times do |i|
  firstName = Faker::Name.first_name
  lastName = Faker::Name.last_name
  user = User.create!(
          first_name: firstName,
          last_name: lastName,
          status: ["Present", "Away"].sample,
          email: "#{firstName}.#{lastName}#{i}@gmail.com"
          )
  p "Created #{user.first_name} #{user.last_name} with a status of #{user.status} and an email of #{user.email}."
end

p "Made #{User.all.length} users"
