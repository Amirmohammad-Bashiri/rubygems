User.create!(email: "boz@gmail.com", password: "kokolak", password_confirmation: "kokolak")

puts "User created"

30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.first.id
    }])
end

puts "30 Coureses created"
