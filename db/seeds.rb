User.create(email: 'penny@gmail.com',
            password: 'password',
            first_name: 'Penny',
            last_name: 'Berube',
            street_address: '1508 E 7th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5555',
            avatar: Faker::Avatar.image)

User.create(email: 'izzy@gmail.com',
            password: 'password',
            first_name: 'Izzy',
            last_name: 'Berube',
            street_address: '1111 E 12th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5556',
            avatar: File.open(Rails.root + "app/assets/images/avatar_3.jpg"))

user = User.create(email: 'pepper@gmail.com',
            password: 'password',
            first_name: 'Pepper',
            last_name: 'Berube',
            street_address: '2106 E 5th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5557',
            avatar: File.open(Rails.root + "app/assets/images/avatar_1.jpg"))

user = User.create(email: 'aleza@gmail.com',
            password: 'password',
            first_name: 'Aleza',
            last_name: 'Berube',
            street_address: '2405 E Cesar Chavez ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5558',
            avatar: File.open(Rails.root + "app/assets/images/avatar_2.jpeg"))

user = User.create(email: 'justin@gmail.com',
            password: 'password',
            first_name: 'Justin',
            last_name: 'Sitarz',
            street_address:'1911 E 11th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5559',
            avatar: Faker::Avatar.image)


tool = Tool.create(kind: 'Circular Saw',
                   name: 'Dewalt 54TF6',
                   user_id: 1,
                   condition: 'Good',
                   description: 'Great saw, new blade',
                   image: File.open(Rails.root + "app/assets/images/circular_saw_1.jpg"))

tool = Tool.create(kind: 'Cordless Drill',
                   name: 'Ryobi 40ST18V',
                   user_id: 1,
                   condition: 'New',
                   description: 'Great drill, lots of extra parts',
                   image: File.open(Rails.root + "app/assets/images/drill_1.jpg"))

tool = Tool.create(kind: 'Corded Drill',
                   name: 'Bosch 18-20V',
                   user_id: 2,
                   condition: 'Fair',
                   description: 'Solid VSM drill with locking chuck',
                   image: File.open(Rails.root + "app/assets/images/drill_2.jpg"))

tool = Tool.create(kind: 'Jackhammer',
                   name: 'Bosch 4044',
                   user_id: 2,
                   condition: 'Great',
                   description: 'Almost brand-new jackhammer with a variety of bits',
                   image: File.open(Rails.root + "app/assets/images/jackhammer_1.jpg"))

tool = Tool.create(kind: 'Cordless Sawzall',
                   name: 'Milwaukee FT65 20V',
                   user_id: 3,
                   condition: 'Good',
                   description: 'Great saw, lots of different blaces',
                   image: File.open(Rails.root + "app/assets/images/sawzall_1.jpg"))

tool = Tool.create(kind: 'Welder',
                   name: 'Eastwood MIG 75AMP',
                   user_id: 3,
                   condition: 'New',
                   description: 'Great welder for small projects',
                   image: File.open(Rails.root + "app/assets/images/welder_1.jpg"))

tool = Tool.create(kind: 'Corded Sawzall',
                   name: 'Dewalt 511F6',
                   user_id: 4,
                   condition: 'Good',
                   description: 'Well used but solid',
                   image: File.open(Rails.root + "app/assets/images/sawzall_2.jpg"))

tool = Tool.create(kind: 'Table Saw',
                   name: 'Delta 500 Cabinet Saw',
                   user_id: 4,
                   condition: 'Good',
                   description: 'Awesome and accurate cabinet saw',
                   image: File.open(Rails.root + "app/assets/images/table_saw_1.jpg"))

tool = Tool.create(kind: 'Table Saw',
                   name: 'Dewalt Contractor 6C',
                   user_id: 5,
                   condition: 'Good',
                   description: 'Portable and easy to set up',
                   image: File.open(Rails.root + "app/assets/images/table_saw_2.jpg"))

tool = Tool.create(kind: 'Welder',
                   name: 'Lincoln 220V',
                   user_id: 5,
                   condition: 'Good',
                   description: 'Awesome all purpose 220 mig welder',
                   image: File.open(Rails.root + "app/assets/images/welder_2.jpg"))



