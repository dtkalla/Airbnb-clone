# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#



ApplicationRecord.transaction do 
    puts "Destroying users table..."
    # Unnecessary if using `rails db:seed:replant`
    User.destroy_all
  
    puts "Resetting primary keys..."
    # For easy testing, so that after seeding, the first `User` has `id` of 1
    ApplicationRecord.connection.reset_pk_sequence!('users')
  
    puts "Creating users..."
    # Create one user with an easy to remember username, email, and password:
    muhammed = 'https://waterbnb-seeds.s3.amazonaws.com/muhammed.png'
    User.create!(
        first_name: 'Muhammed',
        last_name: 'Li',
        email: 'common@name.net', 
        password: 'password',
        profile_pic: muhammed
    )

    
    anthony = 'https://waterbnb-seeds.s3.amazonaws.com/anthony.png'
    User.create!(
        first_name: 'Anthony',
        last_name: 'Bourdain',
        email: 'anthony@travel.org', 
        password: 'password2',
        profile_pic: anthony
    )

    

    barbara = 'https://waterbnb-seeds.s3.amazonaws.com/barbara.png'
    User.create!(
        first_name: 'Barbara',
        last_name: 'Corcoran',
        email: 'barb@money.com', 
        password: 'crush_the_proletariat',
        profile_pic: barbara
    )



    elisa = 'https://waterbnb-seeds.s3.amazonaws.com/elisa.png'
    User.create!(
        first_name: 'Elisa',
        last_name: 'Arias',
        email: 'earias@yahoo.com', 
        password: 'contrasena',
        profile_pic: elisa
    )



    brian = 'https://waterbnb-seeds.s3.amazonaws.com/brian.png'
    User.create!(
        first_name: 'Brian',
        last_name: 'Johnson',
        email: 'yu@hotmail.fr',
        password: 'mahjong7',
        profile_pic: brian
    )




    karen = 'https://waterbnb-seeds.s3.amazonaws.com/karen.png'
    User.create!(
        first_name: 'Karen',
        last_name: 'Smith',
        email: 'ihateserviceworkers@bigbiz.org',
        password: 'genericpw',
        profile_pic: karen
    )


    charles = 'https://waterbnb-seeds.s3.amazonaws.com/charles.png'
    User.create!(
        first_name: 'Charles',
        last_name: 'Yu',
        email: 'charles@johnson.net',
        password: 'chazzitup',
        profile_pic: charles
    )


    # 10.times do 
    #   User.create!({
    #     first_name: Faker::Name.firstName,
    #     last_name: Faker::Name.lastName,
    #     email: Faker::Internet.unique.email,
    #     password: 'password'
    #   }) 
    # end






    puts "Destroying listings table..."
    # Unnecessary if using `rails db:seed:replant`
    Listing.destroy_all
  
    puts "Resetting primary keys..."
    # For easy testing, so that after seeding, the first `Listing` has `id` of 1
    ApplicationRecord.connection.reset_pk_sequence!('listings')
  
    puts "Creating listings..."
    

    Listing.create!(
        city: 'San Francisco',
        country: 'California',
        description: 'Stay here while you interview for a tech job in Silicon Valley!', 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/1_0a.png',
        lister_id: 3,
        latitude: 37.7749,
        longitude: -122.4194,
        price: 312,
        building_type: "apartment",
        rating: 4.777778,
        number_of_ratings: 9,
        lister_name: 'Barbara',
        profile_pic: barbara
    )

    Listing.create!(
        city: 'Manhattan',
        country: 'New York',
        description: 'Greatest city on earth!', 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/2_0.png',
        lister_id: 2,
        latitude: 40.7831,
        longitude: -73.9712,
        price: 357,
        lister_name: "Anthony",
        building_type: "apartment",
        beds: 2,
        bedrooms: 2,
        parking: false,
        boat: false,
        rating: 4.25,
        number_of_ratings: 4,
        profile_pic: anthony
    )
    

    Listing.create!(
        city: 'Barcelona',
        country: 'Spain',
        description: '¡Bienvenidos a todos!', 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/3_0.png',
        lister_id: 4,
        latitude: 41.3874,
        longitude: 2.1686,
        price: 167,
        lister_name: "Elisa",
        profile_pic: elisa,
        beds: 3,
        type_of_water: "sea",
        rating: 4.427864,
        number_of_ratings: 182
    )


    Listing.create!(
        city: 'Cape Town',
        country: 'South Africa',
        description: 'Stay at the edge of the world!', 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/4_0.png',
        lister_id: 3,
        latitude: -33.9249,
        longitude: 18.4241,
        price: 35,
        building_type: "condo",
        pets_allowed: true,
        rating: 4.263889,
        number_of_ratings: 92,
        profile_pic: barbara
    )


    Listing.create!(
        city: 'Atlantis',
        country: 'Atlantis',
        description: "The city, the myth, the legend: come have an unforgettable experience in the recently rediscovered lost city of Atlantis!", 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/5_0.png',
        lister_id: 5,
        latitude: -48.8767,
        longitude: -123.3933,
        price: 1000,
        lister_name: "Brian",
        profile_pic: brian,
        self_check_in: false,
        boat: false,
        parking: false,
        wifi: false,
        pets_allowed: true,
        building_type: "sunken palace",
        rating: 3.4,
        number_of_ratings: 5
    )


    Listing.create!(
        city: 'Manhattan',
        country: 'New York',
        description: "So much history to see in Harlem!", 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/6_0.png',
        lister_id: 3,
        profile_pic: barbara,
        latitude: 40.8116,
        longitude: -73.9465,
        price: 475,
        building_type: "apartment",
        self_check_in: false,
        parking: false,
        bedrooms: 1,
        rating: 4.913978,
        number_of_ratings: 93
    )


    
    Listing.create!(
        city: 'Bemidji ',
        country: "Minnesota",
        description: "The birthplace of Paul Bunyan and the Mississippi, plus pretty good shopping.  Make sure to try the wild rice soup!", 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/7_0.png',
        lister_id: 1,
        latitude: 47.4716,
        longitude: -94.8827,
        price: 67,
        building_type: "cabin",
        pets_allowed: true,
        type_of_water: "lake",
        lister_name: "Muhammed",
        profile_pic: muhammed,
        rating: 3.666667,
        number_of_ratings: 3
    )


    Listing.create!(
        city: 'Isla del Sol',
        country: "Bolivia",
        description: "Highest navigable lake on earth!", 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/8_0.png',
        lister_id: 4,
        latitude: -16.0172,
        longitude: -69.1780,
        price: 35,
        type_of_water: "lake",
        self_check_in: false,
        pets_allowed: true,
        lister_name: "Elisa",
        profile_pic: elisa,
        rating: 5,
        number_of_ratings: 16
    )


    Listing.create!(
        city: 'Flushing',
        country: 'New York',
        description: "Make sure to try the hot pot!", 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/9_0.png',
        lister_id: 1,
        latitude: 40.7675,
        longitude: -73.8331,
        price: 212,
        building_type: "cottage",
        lister_name: "Muhammed",
        profile_pic: muhammed,
        rating: 4.866667,
        number_of_ratings: 15
    )


    Listing.create!(
        city: 'Coney Island',
        country: 'New York',
        description: "Heaven at the end of a subway ride!", 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/10_0.png',
        lister_id: 3,
        latitude: 40.5755,
        longitude: -73.9707,
        price: 277,
        building_type: "apartment",
        profile_pic: barbara,
        rating: 4.8,
        number_of_ratings: 10
    )



    Listing.create!(
        city: 'Venice',
        country: 'Italy',
        description: "Ride a gondola along the Grand Canal!", 
        pictures_url: 'https://waterbnb-seeds.s3.amazonaws.com/10_0.png',
        lister_id: 3,
        latitude: 45.4408,
        longitude: 12.3155,
        price: 126,
        type_of_water: "sea",
        profile_pic: barbara,
        rating: 4.95,
        number_of_ratings: 40
    )



    Listing.create!(
        city: 'Chicago',
        country: 'Illinois',
        description: "Midwest MidBEST!", 
        pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
        lister_id: 1,
        latitude: 41.8781,
        longitude: -87.6298,
        building_type: 'apartment',
        type_of_water: "lake",
        price: 193,
        rating: 3.8,
        number_of_ratings: 15,
        lister_name: 'Muhammed',
        profile_pic: muhammed
    )


    Listing.create!(
        city: 'Odessa',
        country: 'Ukraine',
        description: "Come discover the beauty of Ukraine!", 
        pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
        lister_id: 5,
        latitude: 46.4825,
        longitude: 30.7233,
        price: 54,
        type_of_water: "sea",
        rating: 4.857143,
        number_of_ratings: 7,
        lister_name: 'Brian',
        profile_pic: brian,
        pets_allowed: true
        )


        Listing.create!(
        city: 'Bouvet Island',
        country: 'Norway',
        description: "It's actually illegal to visit without permission of the Norwegian government, and good luck getting here!", 
        pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
        lister_id: 1,
        latitude: -54.4208,
        longitude: 3.3464,
        building_type: "research center",
        price: 90,
        lister_name: "Muhammed",
        profile_pic: muhammed,
        boat: false
    )



    Listing.create!(
        city: 'Port Moresby',
        country: 'Papua New Guinea',
        description: "Come learn about the most diverse country you've never heard of!", 
        pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
        lister_id: 7,
        latitude: -9.4438,
        longitude: 147.1803,
        building_type: "private room",
        price: 35,
        lister_name: "Charles",
        profile_pic: charles,
    )



        Listing.create!(
        city: 'Dubai',
        country: 'United Arab Emirates',
        description: "The world is your oyster here (if you have the money)!", 
        pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
        lister_id: 7,
        latitude: 25.2048,
        longitude: 55.2708,
        price: 616,
        lister_name: "Charles",
        profile_pic: charles,
        bedrooms: 4,
        beds: 6,
        bathrooms: 3
    )



    
    # Listing.create!(
    #     city: 'Singapore',
    #     country: 'Singapore',
    #     description: "City-states are making a comeback!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 6,
    #     latitude: 1.3521,
    #     longitude: 103.8198,
    #     price: 503,
    #       lister_name: "Karen"
    # )













    # Devils Tower oil rig
    # 28.2089, -88.7375



    # Listing.create!(
    #     city: 'Duluth',
    #     country: 'Minnesota',
    #     description: "Other cities have lakes, but ours is Superior!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 46.7867,
    #     longitude: -92.1005,
    #     price: 92,
    # )

    
    

    # Listing.create!(
    #     city: 'Buenos Aires',
    #     country: 'Argentina',
    #     description: 'Algun lema escrito mas tarde', 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: -34.6037,
    #     longitude: -58.3816,
    #     price: 149,
    #     lister_name: "Barbara"
    # )


    
    # Listing.create!(
    #     city: 'San Francisco',
    #     country: 'California',
    #     description: "Have a gay old time!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 37.7609,
    #     longitude: -122.4350,
    #     price: 137,
    # )





    # Listing.create!(
    #     city: 'Seattle',
    #     country: 'Washington',
    #     description: "Make sure to rent a bike and explore the city!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 47.6062,
    #     longitude: -122.3321,
    #     price: 206,
    # )


    
    # Listing.create!(
    #     city: 'Saint-Malo',
    #     country: 'France',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: 48.6493,
    #     longitude: -2.0257,
    #     price: 73,
    # )


    
    # Listing.create!(
    #     city: 'Abidjan',
    #     country: "Côte d'Ivoire",
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 5.3600,
    #     longitude: -4.0083,
    #     price: 38,
    # )


    # Listing.create!(
    #     city: 'Valencia',
    #     country: 'Spain',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: 39.4699,
    #     longitude: -0.3763,
    #     price: 94,
    # )


    # Listing.create!(
    #     city: 'Lagos',
    #     country: 'Nigeria',
    #     description: "The heart of Africa", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 6.5244,
    #     longitude: 3.3792,
    #     price: 14,
    # )



    # Listing.create!(
    #     city: 'San Sebastian',
    #     country: 'Spain',
    #     description: "Also known as Donostia", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: 43.3183,
    #     longitude: -1.9812,
    #     price: 78,
    # )


    # Listing.create!(
    #     city: 'Marseille',
    #     country: 'France',
    #     description: "J'ai pas pense quoi dire ici.", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 43.2965,
    #     longitude: 5.3698,
    #     price: 103,
    # )




    
    # Listing.create!(
    #     city: 'San Francisco (west)',
    #     country: 'California',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 37.7180,
    #     longitude: -122.4772,
    #     price: 284,
    # )


    # Listing.create!(
    #     city: 'San Francisco (east)',
    #     country: 'California',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 37.7277,
    #     longitude: -122.3932,
    #     price: 411,
    # )


    # Listing.create!(
    #     city: 'Staten Island',
    #     country: 'New York',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 40.6427,
    #     longitude: -74.0799,
    #     price: 108,
    # )


    # Listing.create!(
    #     city: 'Bronx',
    #     country: 'New York',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 40.8553,
    #     longitude: -73.8640,
    #     price: 93,
    # )

    # Add Copenhagen



    










    # Listing.create!(
    #     city: 'Ubud',
    #     country: 'Indonesia',
    #     description: "Eat, pray, love <3", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: -8.4095,
    #     longitude: 115.1889,
    #     price: 94,
    # )


    # Listing.create!(
    #     city: 'Rio de Janeiro',
    #     country: 'Brazil',
    #     description: "Come see the biggest Carnaval on earth!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: -22.9068,
    #     longitude: -43.1729,
    #     price: 162,
    # )


    # Listing.create!(
    #     city: 'Flores',
    #     country: 'Guatemala',
    #     description: "Close to the famous Tikal ruins!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: 16.9181,
    #     longitude: -89.8926,
    #     price: 31,
    # )


    # Listing.create!(
    #     city: 'Tokyo',
    #     country: 'Japan',
    #     description: "Stay at the biggest city on earth and climb Mount Fuji!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 35.6762,
    #     longitude: 139.6503,
    #     price: 132,
    # )



    # Listing.create!(
    #     city: 'Dakar',
    #     country: 'Senegal',
    #     description: "Venez ici, tout le monde !", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 14.7167,
    #     longitude: -17.4677,
    #     price: 19,
    # )


    # Listing.create!(
    #     city: 'Phuket',
    #     country: 'Thailand',
    #     description: "Please pronounce this city's name correctly...", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 7.8804,
    #     longitude: 98.3923,
    #     price: 28,
    # )



    # Listing.create!(
    #     city: 'Honolulu',
    #     country: 'Hawaii',
    #     description: "Great beaches and vacations.", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 21.3099,
    #     longitude: -157.8581,
    #     price: 341,
    # )


    # Listing.create!(
    #     city: 'San Juan',
    #     country: 'Puerto Rico',
    #     description: "Buenas vacaciones y playas", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: 18.4671,
    #     longitude: -66.1185,
    #     price: 88,
    # )




    # Listing.create!(
    #     city: 'Miami',
    #     country: 'Florida',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: 25.7617,
    #     longitude: -80.1918,
    #     price: 148,
    # )


    # Listing.create!(
    #     city: 'Amsterdam',
    #     country: 'Netherlands',
    #     description: "City-states are making a comeback!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 52.3676,
    #     longitude: 4.9041,
    #     price: 214,
    # )


    # Listing.create!(
    #     city: 'Boston',
    #     country: 'Massachusetts',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 42.3601,
    #     longitude: -71.0589,
    #     price: 173,
    # )


    # Listing.create!(
    #     city: 'Mumbai',
    #     country: 'India',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 19.0760,
    #     longitude: 72.8777,
    #     price: 56,
    # )


    # Listing.create!(
    #     city: 'Hong Kong',
    #     country: 'China',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 22.3193,
    #     longitude: 114.1694,
    #     price: 386,
    # )


    # Listing.create!(
    #     city: 'Bondai Beach',
    #     country: 'Australia',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: -33.8915,
    #     longitude: 151.2767,
    #     price: 162,
    # )


    # Listing.create!(
    #     city: 'Amalfi Coast',
    #     country: 'Italy',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 40.6333,
    #     longitude: 14.6029,
    #     price: 128,
    # )


    # Listing.create!(
    #     city: 'Arcachon',
    #     country: 'France',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 44.6523,
    #     longitude: -1.1785,
    #     price: 46,
    # )


    # Listing.create!(
    #     city: 'Vancouver',
    #     country: 'Canada',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 49.2827,
    #     longitude: -123.1207,
    #     price: 172,
    # )


    # Listing.create!(
    #     city: 'Pulau Kapas',
    #     country: 'Malaysia',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 5.2190,
    #     longitude: 103.2649,
    #     price: 96,
    # )


    # Listing.create!(
    #     city: 'Luanda',
    #     country: 'Angola',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: -8.8147,
    #     longitude: 13.2302,
    #     price: 649,
    # )


    # Listing.create!(
    #     city: 'Providence',
    #     country: 'Rhode Island',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: 41.8240,
    #     longitude: -71.4128,
    #     price: 72,
    # )


    # Listing.create!(
    #     city: 'Montreux',
    #     country: 'Switzerland',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 46.4312,
    #     longitude: 6.9107,
    #     price: 104,
    # )



    # Listing.create!(
    #     city: 'Ajaccio',
    #     country: 'France',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 41.9192,
    #     longitude: 8.7386,
    #     price: 41,
    # )



    # Listing.create!(
    #     city: 'New Orleans',
    #     country: 'Louisiana',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 29.9511,
    #     longitude: -90.0715,
    #     price: 117,
    # )


    # Listing.create!(
    #     city: 'Kampala',
    #     country: 'Uganda',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 0.3476,
    #     longitude: 32.5825,
    #     price: 13,
    # )


    # Listing.create!(
    #     city: 'Shanghai',
    #     country: 'China',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 31.2304,
    #     longitude: 121.4737,
    #     price: 168,
    # )


    # Listing.create!(
    #     city: 'Cartagena',
    #     country: 'Colombia',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: 10.3932,
    #     longitude: -75.4832,
    #     price: 39,
    # )


    # Listing.create!(
    #     city: 'Cozumel',
    #     country: 'Mexico',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: 20.5072,
    #     longitude: -86.9446,
    #     price: 57,
    # )


    # Listing.create!(
    #     city: 'Lima',
    #     country: 'Peru',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: -12.0464,
    #     longitude: -77.0428,
    #     price: 41,
    # )


    # Listing.create!(
    #     city: 'Valparaiso',
    #     country: 'Chile',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 4,
    #     latitude: -33.0472,
    #     longitude: -71.6127,
    #     price: 66,
    # )



    # Listing.create!(
    #     city: 'Lisbon',
    #     country: 'Portugal',
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 1,
    #     latitude: 38.7223,
    #     longitude: -9.1393,
    #     price: 58,
    # )


    # Listing.create!(
    #     city: 'Reykjavik ',
    #     country: "Iceland",
    #     description: "Stay here -- it'll be a great experience!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/77c897ae-e66b-4b16-8e50-da04b868c3bd.jpg?im_w=720',
    #     lister_id: 3,
    #     latitude: 64.1466,
    #     longitude: -21.9426,
    #     price: 80,
    # )


    # Listing.create!(
    #     city: 'Portofino',
    #     country: "Italy",
    #     description: "So pretty!", 
    #     pictures_url: 'https://a0.muscache.com/im/pictures/acd82b24-eb27-41be-8487-ba4b5d70568f.jpg?im_w=1200',
    #     lister_id: 1,
    #     latitude: 44.3032,
    #     longitude: 9.2098,
    #     price: 94,
    # )

    #Add Iguazu

    #Add Dumbo

    #Add Cano Cristales

    #Add Otavalo

    #Oil rig

    #Crater Lake


    puts "Destroying reservations table..."
    # Unnecessary if using `rails db:seed:replant`
    Reservation.destroy_all
  
    puts "Resetting primary keys..."
    # For easy testing, so that after seeding, the first `Listing` has `id` of 1
    ApplicationRecord.connection.reset_pk_sequence!('reservations')
  
    puts "Creating reservations..."

    require 'date'

    Reservation.create!(
        reserver_id: 2,
        listing_id: 8,
        start_date: Date.new(2023,4,25),
        end_date: Date.new(2023,4,30),
        num_guests: 1,
        price: 204
    )


    Reservation.create!(
        reserver_id: 2,
        listing_id: 4,
        start_date: Date.new(2023,2,16),
        end_date: Date.new(2023,2,26),
        num_guests: 2,
        price: 174
    )


    Reservation.create!(
        reserver_id: 2,
        listing_id: 7,
        start_date: Date.new(2021,6,6),
        end_date: Date.new(2021,6,11),
        num_guests: 1,
        price: 402
    )



    Reservation.create!(
        reserver_id: 2,
        listing_id: 5,
        start_date: Date.new(2020,8,21),
        end_date: Date.new(2020,8,22),
        num_guests: 1,
        price: 1976
    )


    puts "Destroying reviews table..."
    # Unnecessary if using `rails db:seed:replant`
    Review.destroy_all
  
    puts "Resetting primary keys..."
    # For easy testing, so that after seeding, the first `Listing` has `id` of 1
    ApplicationRecord.connection.reset_pk_sequence!('reviews')
  
    puts "Creating reviews..."

    Review.create!(
        reviewer_id: 2,
        listing_id: 1,
        review_date: Date.new(2021,7,13),
        body: "This was a great place to stay!  I have specific and not at all generic opinions about it!",
        reviewer_name: "Anthony",
        profile_pic: anthony
    )


    Review.create!(
        reviewer_id: 1,
        listing_id: 1,
        review_date: Date.new(2022,1,4),
        body: "West coast best coast!",
        reviewer_name: "Muhammed",
        profile_pic: muhammed
    )

    Review.create!(
        reviewer_id: 4,
        listing_id: 1,
        review_date: Date.new(2015,7,4),
        body: "Lots of fireworks over the Bay on the 4th of July!",
        reviewer_name: "Elisa",
        profile_pic: elisa
    )

    Review.create!(
        reviewer_id: 2,
        listing_id: 7,
        review_date: Date.new(2020,8,20),
        body: "The place was nice, and I loved going to Lake Itasca and doing the Bemidji State Park bogwalk!",
        reviewer_name: "Anthony",
        profile_pic: anthony
    )


    Review.create!(
        reviewer_id: 5,
        listing_id: 2,
        review_date: Date.new(2019,6,2),
        body: "Not nearly as cool as Atlantis, tbh.",
        reviewer_name: "Brian",
        profile_pic: brian
    )

    Review.create!(
        reviewer_id: 1,
        listing_id: 2,
        review_date: Date.new(2022,4,27),
        body: "The location was great -- easy access to Central Park and museums!  The unit gets a lot of natural light and has fantastic sunrises!  The A/C works great.  Host was very responsive.  Would stay again",
        reviewer_name: "Muhammed",
        profile_pic: muhammed
    )


    Review.create!(
        reviewer_id: 3,
        listing_id: 2,
        review_date: Date.new(2021,9,13),
        body: "I liked the neighborhood feel and being a short walk from the subway.",
        reviewer_name: "Barbara",
        profile_pic: barbara
    )


    Review.create!(
        reviewer_id: 6,
        listing_id: 6,
        review_date: Date.new(2022,5,18),
        body: "It's a great place to stop in for a work trip.  Vibrant neighborhood culture.  Lots of natural light and the building is gorgeous.  Would stay again.",
        reviewer_name: "Karen",
        profile_pic: karen
    )


    Review.create!(
        reviewer_id: 7,
        listing_id: 6,
        review_date: Date.new(2021,7,22),
        body: "Paper thin walls.  Terribly hot.  Dirty streets.",
        reviewer_name: "Charles",
        profile_pic: charles
    )


    Review.create!(
        reviewer_id: 4,
        listing_id: 6,
        review_date: Date.new(2019,12,26),
        body: "A rat got in the building in the middle of the night.  Owner nonresponsive.  Had to wake up neighbors to deal with it.  Would not stay again.",
        reviewer_name: "Elisa",
        profile_pic: elisa
    )


    Review.create!(
        reviewer_id: 4,
        listing_id: 9,
        review_date: Date.new(2018,2,9),
        body: "Muhammed's cottage was perfect for our extended family gathering. It's spacious, full of natural light and incredibly well designed. The beds were so comfy and you can't beat the views. Would definitely recommend this home. We hope to return in the summer to take full advantage of the pool!",
        reviewer_name: "Elisa",
        profile_pic: elisa
    )


    Review.create!(
        reviewer_id: 2,
        listing_id: 9,
        review_date: Date.new(2016,3,15),
        body: "Beautiful house and amazing view. Mohammed was a great host and very responsive to anything that came up.",
        reviewer_name: "Anthony",
        profile_pic: anthony
    )


    Review.create!(
        reviewer_id: 7,
        listing_id: 9,
        review_date: Date.new(2022,11,18),
        body: "Everything beyond my expectation! House & Living Room 10/10.  Bed Room super clean.  Bath Room nice and clean.",
        reviewer_name: "Charles",
        profile_pic: charles
    )


    Review.create!(
        reviewer_id: 7,
        listing_id: 10,
        review_date: Date.new(2020,10,29),
        body: "I wouldn't want people to book so I could have it again next time!  Just a joke...but seriously, 10/10.",
        reviewer_name: "Charles",
        profile_pic: charles
    )


    Review.create!(
        reviewer_id: 5,
        listing_id: 10,
        review_date: Date.new(2018,5,2),
        body: "Nice place overlooking the water.  Close to a lot of attractions.  I loved going out on the boat!",
        reviewer_name: "Elisa",
        profile_pic: elisa
    )


    Review.create!(
        reviewer_id: 1,
        listing_id: 10,
        review_date: Date.new(2014,4,1),
        body: "Place is awesome!  It was nice falling asleep to the sounds of the waves.  Completely as advertised.",
        reviewer_name: "Muhammed",
        profile_pic: muhammed
    )



    Review.create!(
        reviewer_id: 2,
        listing_id: 3,
        review_date: Date.new(2016,10,12),
        body: "Beautiful Gaudi architectural buildings (although they still haven't finished the Sagrada Familia).  What an experience!",
        reviewer_name: "Anthony",
        profile_pic: anthony
    )


    Review.create!(
        reviewer_id: 6,
        listing_id: 3,
        review_date: Date.new(2021,8,24),
        body: 'Great nightlife -- this neighborhood really puts the "bar" in Barcelona!',
        reviewer_name: "Karen",
        profile_pic: karen
    )


    Review.create!(
        reviewer_id: 1,
        listing_id: 3,
        review_date: Date.new(2019,7,2),
        body: "It rained the whole time.  Ugh!",
        reviewer_name: "Muhammed",
        profile_pic: muhammed
    )



    Review.create!(
        reviewer_id: 2,
        listing_id: 4,
        review_date: Date.new(2021,12,25),
        body: "Boo!",
        reviewer_name: "Anthony",
        profile_pic: anthony
    )



    Review.create!(
        reviewer_id: 4,
        listing_id: 4,
        review_date: Date.new(2022,4,15),
        body: "Pristine views, as well as state-of-the-art accomodations.  10/10, would recommend!",
        reviewer_name: "Elisa",
        profile_pic: elisa
    )



    Review.create!(
        reviewer_id: 5,
        listing_id: 4,
        review_date: Date.new(2017,4,16),
        body: "It was great value for a low price.",
        reviewer_name: "Brian",
        profile_pic: brian
    )



    Review.create!(
        reviewer_id: 1,
        listing_id: 5,
        review_date: Date.new(2021,2,22),
        body: "Hard to get to and very humid.  Unforgettable, but overpriced.",
        reviewer_name: "Muhammed",
        profile_pic: muhammed
    )



    Review.create!(
        reviewer_id: 3,
        listing_id: 5,
        review_date: Date.new(2019,7,14),
        body: "0/10, I can't swim.",
        reviewer_name: "Barbara",
        profile_pic: barbara
    )



    Review.create!(
        reviewer_id: 7,
        listing_id: 5,
        review_date: Date.new(2017,9,23),
        body: "Great seafood selection.  This place is to die for!",
        reviewer_name: "Charles",
        profile_pic: charles
    )




    Review.create!(
        reviewer_id: 3,
        listing_id: 7,
        review_date: Date.new(2021,12,24),
        body: "I used to be a high-achieving female executive from NYC or LA with no time for love, but my business sent me here on Christmas.  I met a cute guy who organizes the yearly Christmas pageant, fell in love, and have impulsively decided to move here for the rest of my life.  Merry Christmas!",
        reviewer_name: "Barbara",
        profile_pic: barbara
    )




    Review.create!(
        reviewer_id: 6,
        listing_id: 7,
        review_date: Date.new(2020,6,26),
        body: "No one wore a mask in the city, except at the local university.  I'm amazed I didn't catch covid.  (The town is lovely, though!)",
        reviewer_name: "Karen",
        profile_pic: karen
    )



    Review.create!(
        reviewer_id: 7,
        listing_id: 8,
        review_date: Date.new(2018,2,6),
        body: "Linda casa, localizaçao muito proxima ao centro e restaurantes. Sala grande com cozinha e uma vista linda. Banheiro grande e pratico. quarto com cama confortavel e aconchegante. O local é muito silencioso e gostoso de ficar... apos uma viagem de 10 dias, acabamos ficando no apartamento descansando com a linda vista do lugar. Cozinhamos e tinha tudo necessario para preparar as refeiçoes.",
        reviewer_name: "Charles",
        profile_pic: charles
    )



    Review.create!(
        reviewer_id: 2,
        listing_id: 8,
        review_date: Date.new(2022,1,7),
        body: "Unforgettable experience!  The lake and house are beautiful, and I loved going out in the boat every day.  Can't wait to come back!",
        reviewer_name: "Anthony",
        profile_pic: anthony
    )



    Review.create!(
        reviewer_id: 3,
        listing_id: 8,
        review_date: Date.new(2020,8,2),
        body: "Everything was closed due to COVID-19, so I spent a lot of time on the water.  Incredibly peaceful -- I'll remember this trip for the rest of my life.",
        reviewer_name: "Barbara",
        profile_pic: barbara
    )


    Review.create!(
        reviewer_id: 2,
        listing_id: 11,
        review_date: Date.new(2018,5,1),
        body: "Staying in Venice and going down the Grand Canal was a dream come true!  Barbara was excellent, and food was unforgettable, and the house was centrally located.  10/10, would highly recommend!",
        reviewer_name: "Anthony",
        profile_pic: anthony
    )


    Review.create!(
        reviewer_id: 4,
        listing_id: 11,
        review_date: Date.new(2021,4,18),
        body: "I grew up in a city, so I'm used to hearing the sounds of cars.  You never realize how annoying they are until you go to a city without them.  Walking and riding boats everywhere was so tranquil, and the vacation much needed.",
        reviewer_name: "Elisa",
        profile_pic: elisa
    )


    Review.create!(
        reviewer_id: 1,
        listing_id: 11,
        review_date: Date.new(2020,2,17),
        body: "Great location, tasty food, beautiful city.  I saw the piazza flooding while I was there, but people just went on with their days.",
        reviewer_name: "Muhammed",
        profile_pic: muhammed
    )


    Review.create!(
        reviewer_id: 5,
        listing_id: 12,
        review_date: Date.new(2022,3,19),
        body: "Sucks.  Enough said.",
        reviewer_name: "Brian",
        profile_pic: brian
    )


    Review.create!(
        reviewer_id: 2,
        listing_id: 12,
        review_date: Date.new(2014,4,29),
        body: "New York of the Midwest!  Great location (and easy to get around), exactly as advertised.  I especially enjoyed the Riverwalk!",
        reviewer_name: "Barbara",
        profile_pic: barbara
    )


    Review.create!(
        reviewer_id: 7,
        listing_id: 12,
        review_date: Date.new(2016,9,1),
        body: "Best pizza in the world, hands-down!",
        reviewer_name: "Charles",
        profile_pic: charles
    )


    Review.create!(
        reviewer_id: 6,
        listing_id: 13,
        review_date: Date.new(2018,11,21),
        body: "Brian was a great hose, but hardly anyone here spoek English!  Not a great place to visit for an American.",
        reviewer_name: "Karen",
        profile_pic: karen
    )


    Review.create!(
        reviewer_id: 3,
        listing_id: 13,
        review_date: Date.new(2022,5,30),
        body: "I didn't actually stay here -- I just reserved the place to get money to Brain to help relocate his family -- but he was SO gracious and sweet!  Slava Ukraini!",
        reviewer_name: "Barbara",
        profile_pic: barbara
    )



    Review.create!(
        reviewer_id: 2,
        listing_id: 13,
        review_date: Date.new(2019,1,3),
        body: "I wasn't originally planning to visit Ukraine, but I had a few extra days in Poland and thought I'd check it out and I'm so glad I did!  It's a much more beautiful city than I expected and full of culture.",
        reviewer_name: "Anthony",
        profile_pic: anthony
    )

    puts "Done!"
  end