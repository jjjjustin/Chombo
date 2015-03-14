User.create(email: Faker::Internet.email,
            password: 'password',
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            street_address: '1508 E 7th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5555',
            avatar: Faker::Avatar.image)

User.create(email: Faker::Internet.email,
            password: 'password',
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            street_address: '1111 E 12th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5556',
            avatar: Faker::Avatar.image)

user = User.create(email: Faker::Internet.email,
            password: 'password',
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            street_address: '2106 E 5th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5557',
            avatar: Faker::Avatar.image)

user = User.create(email: Faker::Internet.email,
            password: 'password',
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            street_address: '2405 E Cesar Chavez ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5558',
            avatar: Faker::Avatar.image)

user = User.create(email: Faker::Internet.email,
            password: 'password',
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            street_address:'1911 E 11th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5559',
            avatar: Faker::Avatar.image)


15.times do
    user.tools.create(kind: ['Circular Saw', 'Tile Saw', 'Drill', 'Hammer', 'Sander', 'Welder', 'Grinder'].sample,
                      name: ['Dewalt', 'Milwaukee', 'Bosch', 'Ryobi', 'Ridgid'].sample,
                      user_id: (1..5).sample,
                      condition: ['Good', 'Great', 'Fair', 'Bad', 'New'].sample,
                      description: ['Really great, brand new everything',
                                    'I use it almost daily, great tool',
                                    'A little rusty, but it has new parts',
                                    'Brand spanking new'].sample,
                      image: Faker::Avatar.image)
end

