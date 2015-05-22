user = User.create!(name: 'Huy', email: 'huy@aol.com', friends_email: 'huy2@aol.com', password: 'huy')

Profile.create!(age: 19, height: "5'1", short_bio: "A regular guy", interests: "Karate", user_id: 1)

Message.create!(title: "Hello", body: "Yes!!!!", user_id: 1)

