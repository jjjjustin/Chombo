# => USERS

User.create(email: 'penny@gmail.com',
            password: 'password',
            first_name: 'Penny',
            last_name: 'Berube',
            street_address: '1508 E 7th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5555',
            avatar: File.open(Rails.root + "app/assets/images/penny.jpg"))

User.create(email: 'izzy@gmail.com',
            password: 'password',
            first_name: 'Izzy',
            last_name: 'Berube',
            street_address: '1111 E 12th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5556',
            avatar: File.open(Rails.root + "app/assets/images/izzy.jpg"))

User.create(email: 'pepper@gmail.com',
            password: 'password',
            first_name: 'Pepper',
            last_name: 'Berube',
            street_address: '2106 E 5th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5557',
            avatar: File.open(Rails.root + "app/assets/images/pepper.jpg"))

User.create(email: 'aleza@gmail.com',
            password: 'password',
            first_name: 'Aleza',
            last_name: 'Berube',
            street_address: '2405 E Cesar Chavez ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5558',
            avatar: File.open(Rails.root + "app/assets/images/aleza.jpg"))

User.create(email: 'justin@gmail.com',
            password: 'password',
            first_name: 'Justin',
            last_name: 'Sitarz',
            street_address:'1911 E 11th ST',
            state: 'Texas',
            zip: '78702',
            phone_number: '555-5559',
            avatar: File.open(Rails.root + "app/assets/images/justin.jpg"))

User.create(email: 'jon@gmail.com',
            password: 'password',
            first_name: 'Jon',
            last_name: 'Merz',
            street_address:'1103 W College St.',
            state: 'IL',
            zip: '62901',
            phone_number: '555-5510',
            avatar: File.open(Rails.root + "app/assets/images/jon.jpg"))


# => TOOLS

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

tool = Tool.create(kind: 'Orbital Sander',
                   name: 'Ridgid 6" ROS',
                   user_id: 6,
                   condition: 'Good',
                   description: 'Solid little palm sander - comes with several sanding pads',
                   image: File.open(Rails.root + "app/assets/images/orbital_sander_1.jpg"))

tool = Tool.create(kind: 'Orbital Sander',
                   name: 'Bosch 5" ROS T44',
                   user_id: 1,
                   condition: 'Great',
                   description: 'Almost brand new variable speed Random Orbital Sander, great condition',
                   image: File.open(Rails.root + "app/assets/images/orbital_sander_2.jpg"))

tool = Tool.create(kind: 'Finishing Sander',
                   name: 'Ryobi 4" VSS-65',
                   user_id: 6,
                   condition: 'Fair',
                   description: 'Decent sander for small/medium projects',
                   image: File.open(Rails.root + "app/assets/images/finishing_sander_1.png"))

# => REVIEWS

Review.create(user_id: 1,
              reviewer_id: 2,
              review: 'Great experience! A++++',
              rating: 5)

Review.create(user_id: 1,
              reviewer_id: 5,
              review: "Awesome - great tools, and it's nice to finally meet some of my neighbors",
              rating: 4)

Review.create(user_id: 2,
              reviewer_id: 1,
              review: "Super cool and super chill - I think we'll be sharing tools again in the future!",
              rating: 5)

Review.create(user_id: 2,
              reviewer_id: 3,
              review: "Pretty great experience - would do it again",
              rating: 4)

Review.create(user_id: 3,
              reviewer_id: 1,
              review: "Pepper was really nice - I'd work with her again",
              rating: 4)

Review.create(user_id: 3,
              reviewer_id: 2,
              review: 'Excellent',
              rating: 5)

Review.create(user_id: 4,
              reviewer_id: 2,
              review: 'A+ - would try this again, it worked great',
              rating: 5)

Review.create(user_id: 4,
              reviewer_id: 5,
              review: 'Needed a drill in a pinch and she came through for me - awesome!',
              rating: 4)

Review.create(user_id: 5,
              reviewer_id: 6,
              review: 'Super cool - why has no one thought of this before?!',
              rating: 4)

Review.create(user_id: 5,
              reviewer_id: 2,
              review: 'Perfect - just what I needed :)',
              rating: 5)

Review.create(user_id: 6,
              reviewer_id: 5,
              review: 'Great experience!',
              rating: 5)

Review.create(user_id: 6,
              reviewer_id: 4,
              review: 'Thanks - really great!',
              rating: 4)


# => MESSAGES

Message.create(sender_id: 1,
               receiver_id: 2,
               reservation_id: 1,
               body: "Sounds like a plan!")

Message.create(sender_id: 1,
               receiver_id: 2,
               reservation_id: 1,
               body: "Sounds like a plan!")

Message.create(sender_id: 1,
               receiver_id: 2,
               reservation_id: 1,
               body: "Sounds like a plan!")

Message.create(sender_id: 1,
               receiver_id: 2,
               reservation_id: 1,
               body: "Sounds like a plan!")

Message.create(sender_id: 1,
               receiver_id: 2,
               reservation_id: 1,
               body: "Sounds like a plan!")

Message.create(sender_id: 1,
               receiver_id: 2,
               reservation_id: 1,
               body: "Sounds like a plan!")

# => RESERVATIONS

Reservation.create(start_day: "2015-03-25",
                   end_day: "2015-03-25",
                   lender_id: 1,
                   borrower_id: 2,
                   tool_id: 5)






