user = User.create!(name: 'Huy', email: 'huy@aol.com', friends_email: 'huy2@aol.com', password: 'huy')
user = User.create!(name: 'Jackson Smith', email: 'jackson@aol.com', friends_email: 'huy2@aol.com', password: 'jackson')
user = User.create!(name: 'Max Powers', email: 'max@aol.com', friends_email: 'huy2@aol.com', password: 'max')
user = User.create!(name: 'Steven Hero', email: 'steven@aol.com', friends_email: 'huy2@aol.com', password: 'steven')

Profile.create!(age: 19, height: "5'1", short_bio: "A regular guy", interests: "Karate, MMA, Hiking", user_id: 1)
Profile.create!(age: 28, height: "5'8", short_bio: "I am an active guy", interests: "Bowling, Sailing, Guns", user_id: 2)
Profile.create!(age: 38, height: "6'1", short_bio: "A sensitive guy", interests: "Music, Arts, Poems", user_id: 3)
Profile.create!(age: 14, height: "5'10", short_bio: "I like stuff", interests: "Money, Cars, Watches", user_id: 4)

Message.create!(title: "Hello", body: "Yes!!!!", user_id: 1)

