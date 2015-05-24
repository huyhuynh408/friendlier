user1 = User.create!(name: 'Huy', email: 'huy@aol.com', friends_email: 'huy2@aol.com', password: 'huy')
user2 = User.create!(name: 'Jerrod', email: 'jackson@aol.com', friends_email: 'huy2@aol.com', password: 'jackson')
user3 = User.create!(name: 'Max Powers', email: 'max@aol.com', friends_email: 'huy2@aol.com', password: 'max')
user4 = User.create!(name: 'Stevie', email: 'steven@aol.com', friends_email: 'huy2@aol.com', password: 'steven')
user5 = User.create!(name: 'Flint', email: 'flint@aol.com', friends_email: 'huy2@aol.com', password: 'flint')
user6 = User.create!(name: 'Jennifer', email: 'flint@aol.com', friends_email: 'huy2@aol.com', password: 'flint')

Profile.create!(age: 19, height: "5'1\"", short_bio: "A regular guy", interests: "Karate, MMA, Hiking", user_id: 1, first_quality: "Nicest guy in the world", second_quaity: "Super awesome", third_quality: "Humble")
Profile.create!(age: 28, height: "5'8\"", short_bio: "I am an active guy", interests: "Bowling, Sailing, Guns", user_id: 2)
Profile.create!(age: 38, height: "6'1\"", short_bio: "A sensitive guy", interests: "Music, Arts, Poems", user_id: 3)
Profile.create!(age: 14, height: "5'10\"", short_bio: "I like stuff", interests: "Money, Cars, Watches", user_id: 4)
Profile.create!(age: 54, height: "6'2\"", short_bio: "Man of the world", interests: "Fun, Antiques, Beaches", user_id: 5)

user6.send_message(user1, "You are a cool guy", "Hi :)")
