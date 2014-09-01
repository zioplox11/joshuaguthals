# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Photo.delete_all

photo1 = Photo.create(image_url: 'http://i.imgur.com/KOGp5GE.png', description: 'This was taken last year in Hawaii', name: 'Hawaii')

main_welcome_photo = Photo.create(image_url: '../public/images/images_1x_2x/welcome_images/joshua_by_well.jpg', description: 'Joshua sits contemplatively beside an abandoned well in Cold Spring, New York', name: 'Joshua by Well')

click_n_grow = Photo.create(image_url: '../public/images/images_1x_2x/favourite_things/click_and_grow.jpg', description: 'This is a click and grow plant', name: 'Click and Grow')

krav_maga = Photo.create(image_url: '../images/images_1x_2x/hobbies/krav_maga.jpg', description: 'People fight each other using Krav Maga', name: 'Krav Maga')

prowl_photo = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/prowl_photo.jpg', description: 'Prowl App landing page', name: 'Prowl Landing')

reuben_photo = Photo.create(image_url: '../images/images_1x_2x/friends_family/reuben_with_pretzel.jpg', description: 'Reuben eats a pretzel.', name: 'Reuben')

micah_photo = Photo.create(image_url: '../images/images_1x_2x/friends_family/micah.jpg', description: 'Micah has quite large and very expressive eyes.', name: 'Micah')

leah_photo = Photo.create(image_url: '../images/images_1x_2x/friends_family/leah_and_joshua.jpg', description: 'Leah helped organize a giant, amazing Parks Department event at NYU. Afterward she posed with me.', name: 'Leah')

atanas_photo = Photo.create(image_url: '../images/images_1x_2x/friends_family/atanas_and_joshua.jpg', description: 'Atanas and I went to the Griffith Observatory in Los Angeles.', name: 'Atanas and Joshua')

ilana_photo = Photo.create(image_url: '../images/images_1x_2x/friends_family/atanas_and_ilana.jpg', description: 'One snowy night in the Upper West Side, Lani and Atanas smiled for the camera.', name: 'Atanas and Ilana')

andrew_photo = Photo.create(image_url: '../images/images_1x_2x/friends_family/andrew.jpg', description: 'Andrew is tall and stands aloof in Prospect Park.', name: 'Andrew')

mischka_photo = Photo.create(image_url: '../images/images_1x_2x/friends_family/mischka.jpg', description: 'Mischka took interest in my metal back scratcher one morning. Taking advantage of her curiousity, I held it behind my camera to snap this rare direct photo her.', name: 'Mischka')

barnaby_photo = Photo.create(image_url: '../images/images_1x_2x/friends_family/rip_barnaby.jpg', description: 'Atanas made this RIP image based on a photo from Barnaby\'s better days.', name: 'RIP Barnaby')

mud_run = Photo.create(image_url: '../images/images_1x_2x/hobbies/mudrun.jpg', description: 'My beard is really quite heavy with filth, silt, dirt, and drudgery.', name: 'Mud run')

beard_with_ice = Photo.create(image_url: '../images/images_1x_2x/hobbies/beard_with_ice.jpg', description: 'I walked for a solid hour through Park Slope in heavy snow, ending up with a very icy beard.', name: 'Beard With Ice')

my_beard = Photo.create(image_url: '../images/images_1x_2x/hobbies/my_beard.jpg', description: 'I spend an absurd amount of time grooming and tending to my beard.', name: 'My beard')

beard_google_glass = Photo.create(image_url: '../images/images_1x_2x/hobbies/beard_google_glass.jpg', description: 'Google Glass didn\'t please me too much. But I still took this quick selfie before I had to give Glass back.', name: 'Beard at Google Glass')

hiv_awareness = Photo.create(image_url: '../images/images_1x_2x/hobbies/hiv_awareness_event.jpg', description: 'My former co-worker, Chloe, and I went to an HIV prevention and planning event as the new mayor was elected.', name: 'HIV Awareness Event')

man_spyview = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/man_spyview.jpg', description: 'Near Julliard a man checked out a sign. It felt like I was eavesdropping on his thoughts.', name: 'Man viewed from above')

sweaty_pink = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/sweaty_pink_autopaint.jpg', description: 'There was a huge pink Mack truck sitting sweating in the humidity on the upper West Side one day.', name: 'Sweat Pink Mack truck')

bug_on_water = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/bug_on_water_sky.jpg', description: 'A water bug skates the surface of a pond in the Denver Botanical Gardens.', name: 'Bug on Sky')


blade_runner = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/blade_runner.jpg', description: 'A clothing store in the Garment District set up a rather surreal window display the made me think of Blade Runner.', name: 'Blade Runner')

fruitstand = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/colorful_fruitstand.jpg', description: 'In Koreatown near 34th Street there sat a small and colorful stand filled with fruits.', name: 'Colorful Fruitstand')

greenball = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/little_green_frog_ball.jpg', description: 'One summery day in Prospect Park I noticed a grinning green frog ball in the dust near a group of picnickers.', name: 'Grinning Frog Ball')

looming_cloud = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/looming_cloud_hedge.jpg', description: 'The clouds were rolling in above the hedges of Dia Beacon. It made me think of Alice In Wonderland', name: 'Looming Cloud Above Hedge')

red_buggy = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/red_buggy.jpg', description: 'I loved the bright red paint job on this old car.', name: 'Red Buggy')

sun_dapple = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/sundappled_flowers.jpg', description: 'In Cold Spring, New York, there are gorgeous flowers everywhere. These were caught in dappled sunlight.', name: 'Sun dappled flowers')

canoes = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/canoes_in_a_row.jpg', description: 'In Fort Collins, Colorado, next to a small lake, I noticed a line of canoes with such a compelling muted color pallet to them.', name: 'Colorful canoes')

sleeping_atanas = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/sleeping_atanas.jpg', description: 'I caught a snapshot of Atanas sleeping one night. He looked angelic.', name: 'Sleeping Atanas')

looking_down = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/looking_down_subway.jpg', description: 'This woman was angry as she read a text message. There was something sturdy and sad about her.', name: 'Angry Text')

empire_state_on_top = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/top_of_empire_state.jpg', description: 'This view looking up at Empire State made me think of Mad Max or Return of the Jedi ... futuristic, deserted, and perhaps violent.', name: 'Empire State Up Top')

workers_flourescent = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/workers_flourescent.jpg', description: 'In the quiet splendor of Cold Spring, New York, a little haven of loudness followed us from NYC. This construction was going on next to our bed and breakfast\'s window', name: 'South Brooklyn escape')

burger_klein = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/burger_klein.jpg', description: 'A burger shop near a church in the East Village. It felt mildly iconoclastic.', name: 'Burger Klein')

newyork = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/newyork_newyork.jpg', description: 'I was at an HIV prevention conference in a downtown Manhattan highrise and the view was stunning.', name: 'New York New York')

blurry_construction = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/blurry_construction.jpg', description: 'The construction site in Clinton Hill had a plexiglass window you could look through. Someone had added some super hot pink graffiti just above it.', name: 'Blurry Construction')

truck_storm = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/truck_in_storm.jpg', description: 'Near Denver, there was a stunning storm and a massive truck barreling alongside it. It seemed menacing, like the cover to a horror novel.', name: 'Truck in Storm')

maple_leaves = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/red_maple_above.jpg', description: 'This was in Cherry Hill, New Jersey. There was a simply stunning Asian maple tree in someone\'s front yard.', name: 'Maple leaves')

triple_in_field = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/triple_in_field.jpg', description: 'Atanas sat with his aunt and uncle out in a huge field on separate benches.', name: 'Triple in Field')

plane_above = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/plane_above.jpg', description: 'A plane was flying above Grand Army Plaza. I had to zoom way in but ended up liking the feeling that created.', name: 'Plane above')

building_facade= Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/building_facade.jpg', description: 'This particular building jutted upward near the New York Public Library in a very proper way. It was quite erect.', name: 'Upward building')

orange_boots = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/orange_boots_subway.jpg', description: 'The orange boots, the umbrella, and the blank look really caught my eye.', name: 'Orange Boots and Umbrella')

south_brooklyn = Photo.create(image_url: '../images/images_1x_2x/hobbies/photography/south_brooklyn.jpg', description: 'It seems impossible that this gorgeous spot could be in south Brooklyn but it is.', name: 'South Brooklyn escape')



FavouriteThing.delete_all

favouritething1 = FavouriteThing.create(name: 'Click and Grow', description: 'I recently purchased a Click and Grow Smart Herb Garden that promises to grow lemon balm, basil, and thyme with no muss and no fuss whatsoever')

favouritething1.photos << click_n_grow

Hobby.delete_all

krav = Hobby.create(finder: 'kravmaga', name: 'Krav Maga self defense training', description: 'I have been practicing Krav Maga for about three months. It is a self-defense modality that is part of the basic training of the Isreali army. It emphasizes defending yourself from attackers by neutralizing them in the fewest (and most damaging) steps possible.' )

sports = Hobby.create(finder: 'sports', name: 'Triathlons/Mud runs', description: 'I have been dabbling in triathlons and mud runs for several years. I splashed through some serious mud in Ireland, completed the NYC olympic distance triathlon, and most recently headed up to the Bronx for a very muddy experience indeed (as seen in attached photo).' )

songs = Hobby.create(finder: 'songs', name: 'Song-writing and general music-making', description: '' )

photos = Hobby.create(finder: 'photography', name: 'Digital photography', description: 'With the constant improvements of Instagram, Afterlight, VSCOcam, and the like, it has become increasingly enjoyable to take photos with my iPhone. Here is a random sampler.' )

beard = Hobby.create(finder: 'beard', name: 'Beard management', description: 'Last summer I decided to take the plunge and start growing out my beard. I bought a great beard grooming kit and began brushing and oiling my beard morning and evening and taking biotin which purportedly strengthens human hair. I also started getting professional beard trims from Duval at <a href="https://www.harrys.com/cornershop" target="_blank">Harrys Corner Shop</a>. Before I knew it, many people began stopping me on the streets, the subway, at restaurants, etc., asking me how I got such a great, healthy beard! So I guess all my grooming efforts really worked.')

hivprevention = Hobby.create(finder: 'hivplanning', name: 'HIV Prevention, Planning, and Care', description:'')

krav.photos << krav_maga

sports.photos << mud_run

beard.photos << my_beard

beard.photos << beard_google_glass

beard.photos << beard_with_ice

hivprevention.photos << hiv_awareness

photos.photos << man_spyview

photos.photos << canoes

photos.photos << sweaty_pink

photos.photos << bug_on_water

photos.photos << burger_klein

photos.photos << sun_dapple

photos.photos << looking_down

photos.photos << red_buggy

photos.photos << looming_cloud

photos.photos << triple_in_field

photos.photos << greenball

photos.photos << building_facade

photos.photos << empire_state_on_top

photos.photos << fruitstand

photos.photos << maple_leaves

photos.photos << sleeping_atanas

photos.photos << truck_storm

photos.photos << blurry_construction

photos.photos << plane_above

photos.photos << workers_flourescent

photos.photos << orange_boots

photos.photos << south_brooklyn

photos.photos << newyork

photos.photos << blade_runner


KeyDesignElement.delete_all

design_tool1 = KeyDesignElement.create(name: 'Backbone.js', dev_tool_url: 'http://backbonejs.org/', description: 'Backbone.js gives structure to web applications by providing models, collections, and views -- all connected to your existing API over a RESTful JSON interface.')

design_tool2 = KeyDesignElement.create(name: 'User Interviews', description:'An emphasis at General Assembly was for us to engage end-users via user stories. Scheduling interviews with target audiences can yield pertinent information that can be used to create new tickets in Pivotal.')

design_tool3 = KeyDesignElement.create(name: 'Front-end design team', description: 'In order to create an application with good use potential, the look and feel of the site is critically important. I work with professional designers whenever possible to improve site layouts.')

design_tool4 = KeyDesignElement.create(name: 'UX')

design_tool5 = KeyDesignElement.create(name: 'Web Audio API', dev_tool_url: 'http://webaudio.github.io/web-audio-api/', description: 'A high-level JavaScript API for processing and synthesizing audio in web applications. The primary paradigm is of an audio routing graph, where a number of AudioNode objects are connected together to define the overall audio rendering.')

design_tool6 = KeyDesignElement.create(name: 'jQuery', dev_tool_url: 'http://api.jquery.com/', description: 'jQuery is a feature-rich JavaScript library used for HTML document traversal and manipulation, event handling, animation, and Ajax.')

design_tool7 = KeyDesignElement.create(name: 'Public APIs', description: 'As the movement toward a more programmable web continues, it is increasingly important to be comfortable making API calls to other servers to expand meaningful web content.', dev_tool_url: 'http://api.jquery.com/',)

design_tool8 = KeyDesignElement.create(name: 'Ruby on Rails', dev_tool_url: 'http://guides.rubyonrails.org/', description: 'Rails is a web application development framework written in the Ruby language. It is designed to allow you to write less code while accomplishing more than many other languages and frameworks. Experienced Rails developers also report that it makes web application development more fun.')

design_tool9 = KeyDesignElement.create(name: 'JavaScript', dev_tool_url: 'https://developer.mozilla.org/en-US/docs/Web/JavaScript', description: 'JavaScript® (often shortened to JS) is a prototype-based, multi-paradigm scripting language that is dynamic, and supports object-oriented, imperative, and functional programming styles.')


WebProject.delete_all

prowl = WebProject.create(name: 'Prowl', description: 'A dating, sex, friendship, and social networking app for LGBTQ women. Using real world user stories -- from interviews with a single woman in her twenties, a married couple with children, and a partnered couple expecting children -- my teammates and I are in the process of creating a space for LGBTQ women to meet up and engage in social networking uniquely suited to their needs. ', project_url: 'http://prowl-dev.herokuapp.com/', key_dev_element: 'Backbone')


prowl_photo1 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/prowl_landing.jpg', description: 'Prowl\'s landing page', name: 'Prowl Landing')

prowl_photo2 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/prowl_profile_page.jpg', description: 'A view of a sample profile.', name: 'Prowl Profile page')

prowl_photo3 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/prowl_local_users.jpg', description: 'A view of local users.', name: 'Prowl Users')

prowl.photos << prowl_photo1 << prowl_photo2 << prowl_photo3

prowl.key_design_elements << design_tool8 << design_tool9



my_boro = WebProject.create(name: 'MyBoro', description: 'MyBoro is a collaborative project that seeks to provide people easy access to helpful information in their immediate area. We culled together API calls to a half-dozen servers, including the subway, the weather, and local news. I was responsible for scraping Google Movies\' API also for building out our site\'s jQuery functionality and ajax.', project_url: 'http://my-boro-dev.herokuapp.com/', key_dev_element: 'Public APIs')


my_boro_photo1 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/myboro-landing.jpg', description: 'MyBoro landing page', name: 'MyBoro Landing')

my_boro_photo2 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/myboro-options.jpg', description: 'MyBoro local options', name: 'MyBoro Options')

my_boro_photo3 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/myboro-results.jpg', description: 'MyBoro sample results', name: 'MyBoro Results')

my_boro.photos << my_boro_photo1 << my_boro_photo2 << my_boro_photo3

my_boro.key_design_elements << design_tool7 << design_tool6 << design_tool3



triangle_app = WebProject.create(name: 'TriangleApp', description: 'I stumbled upon a coding challenge asking me to take any triangle (composed of integers) and traverse it row by row to create the largest total sum of numbers. A constraint was that the next number has to come either directly below and to the left or directly below and to the right of the current number. I enjoyed the project enough that I built out an application that could solve and visual present the solution for any triangle with similar structure of the challenge triangle (new-line delimited rows with correct number of space delimited integers in each row).', project_url: 'http://triangle-app.herokuapp.com/', key_dev_element: 'DOM traversal')


triangle_app_photo1 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/triangle_interface.jpg', description: 'TriangleApp landing page', name: 'TriangleApp Landing')

triangle_app_photo2 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/triangle_answers.jpg', description: 'TriangleApp result page for original code challenge (a 100 row triangle).', name: 'TriangleApp sample result')

triangle_app.photos << triangle_app_photo1

triangle_app.key_design_elements << design_tool8 << design_tool9



hangman = WebProject.create(name: 'Hangman Is Fun', description: 'This was a quick project at General Assembly, to help us get our feet wet in JavaScript. I have always liked hangman, so I thought it would fun to work with the input of a designer to make this one-page app look retro and playful.', project_url: 'http://hangman-is-fun.herokuapp.com/', key_dev_element: 'JavaScript')


hangman_photo1 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/hangman_newgame.jpg', description: 'Hangman Is Fun landing page', name: 'TriangleApp Landing')

hangman_photo2 = Photo.create(image_url: '../images/images_1x_2x/portfolio_stills/hangman_answers.jpg', description: 'View of a game in progress.', name: 'TriangleApp sample result')

hangman.photos << hangman_photo1

hangman.key_design_elements << design_tool3 << design_tool9







AboutMe.delete_all

joshua = AboutMe.create(name: 'Joshua AKA me', description: 'Here are some actions shots of me, though I do also spend much time in bed coding or watching Netflix on my computer.')


reuben = AboutMe.create(name: 'Reuben', description: 'Reuben, my older biological son, is growing up with his moms here in Brooklyn. He is bright, witty, and 3 years old.')

atanas = AboutMe.create(name: 'Atanas', description: 'Atanas is a highly talented visual artist who seemingly cannot create something that is not minimal, progressive, and lovely. He shares a very small home with me and Mischka in Clinton Hill. A lot of his time is spent reading design blogs and applying what he has read to his own usually digital creations.')

micah = AboutMe.create(name: 'Micah', description: 'Micah is Reuben\'s little brother, and is about five months old. He makes utterly adorable facial expressions and some rather endearing gurgles and blurbles as well.')

mischka = AboutMe.create(name: 'Mischka', description: 'I adopted this little sprite of a cat as a gift from Reuben\'s moms. She was terribly shy at first, never even leaving the corner of the closet. As the years passed, she became friendlier and more confident. It helped that Atanas has great skill with strings and Mischka truly loves strings.')

lani = AboutMe.create(name: 'Ilana', description: 'Lani is the musically gifted sister of Leah. She pops in and out of our lives at unexpected moments, almost always with an infectious liveliness and a willingness to take part in whatever adventures have struck our fancies. Otherwise she is probably singing something somewhere.')


leah = AboutMe.create(name: 'Leah', description: 'In my experience, Leah is as old the sun, wind, and rain. Not in human years ... rather I mean that I have known her for so long that I cannot recall a time prior to her existence. In real life, she works day-by-day to beautify NYC\'s parks.')

andrew = AboutMe.create(name: 'Andrew', description: 'A mathematically and creatively gifted humanoid who goes by the name Andrew. Andrew periodically drags me into various tech oriented experiences such as a year long C++ course at NYU and an immersive program in web development at General Assembly. He also is an astute host who always entertains.')



reuben.photos << reuben_photo

mischka.photos << mischka_photo

micah.photos << micah_photo

leah.photos << leah_photo

atanas.photos << atanas_photo

andrew.photos << andrew_photo

joshua.photos << beard_with_ice

lani.photos << ilana_photo

micah_photo2 = Photo.create(image_url: '../images/images_1x_2x/friends_family/micah_looks_down.jpg', description: 'Micah examines the act of looking down.', name: 'Micah looks down')

micah_photo3 = Photo.create(image_url: '../images/images_1x_2x/friends_family/micah_almost_crawls.jpg', description: 'Micah smiles in anticipation of actually crawling one day.', name: 'Micah almost crawls')

micah.photos << micah_photo2 << micah_photo3

reuben_photo2 = Photo.create(image_url: '../images/images_1x_2x/friends_family/reuben_and_watermelon_horse.jpg', description: 'Reuben enjoys time with a horse named Watermelon.', name: 'Micah and a horse named watermelon')

reuben_photo3 = Photo.create(image_url: '../images/images_1x_2x/friends_family/atanas_and_sleeping_reuben.jpg', description: 'Reuben naps on Atanas\'s shoulder after a day in the park.', name: 'Reuben Sleeps')

reuben.photos << reuben_photo2 << reuben_photo3


joshua_photo2 = Photo.create(image_url: '../images/images_1x_2x/friends_family/joshua_and_gorilla.jpg', description: 'I had a good time hanging out with the gorilla at the Koons exhibit.', name: 'Joshua and Gorilla')

joshua_photo3 = Photo.create(image_url: '../images/images_1x_2x/friends_family/joshua_in_tree.jpg', description: 'There was a big strong tree in the backyard of my sister\'s house in Fort Collins.', name: 'Joshua climbs a tree')

joshua.photos << joshua_photo2 << joshua_photo3


atanas_photo2 = Photo.create(image_url: '../images/images_1x_2x/friends_family/atanas_on_street.jpg', description: 'Atanas struts his stuff on 5th ave.', name: 'Atanas on street')

atanas_photo3 = Photo.create(image_url: '../images/images_1x_2x/friends_family/atanas_and_mini-atanas.jpg', description: 'Atanas created the ultimate 3-D selfie of himself.', name: 'Atanas and his mini friend')

atanas.photos << atanas_photo2 << atanas_photo3


lani_photo2 = Photo.create(image_url: '../images/images_1x_2x/friends_family/climbing_gym_friends.jpg', description: 'Lani joined us for some indoor rock climbing.', name: 'lani at climbing gym')

lani_photo3 = Photo.create(image_url: '../images/images_1x_2x/friends_family/speedy_romeo_pizza_friends.jpg', description: 'We had tasty pizza with Lani at Speedy Romeo during a less bearded time of my life.', name: 'Speedy Romeo Pizza')

lani.photos << lani_photo2 << lani_photo3



andrew_photo2 = Photo.create(image_url: '../images/images_1x_2x/friends_family/jazzy_andrew.jpg', description: 'Andrew with a beard and hat and an Afterlight filter that makes him look jazzy!', name: 'andrew looks jazzy')

andrew_photo3 = Photo.create(image_url: '../images/images_1x_2x/friends_family/andrew_at_toms_restaurant.jpg', description: 'Andrew somberly enjoys a mug of coffee at Tom\'s Restaurant.', name: 'Andrews at Tom\'s Restaurant.')

andrew.photos << andrew_photo2 << andrew_photo3



leah_photo2 = Photo.create(image_url: '../images/images_1x_2x/friends_family/leah_reads_to_reuben.jpg', description: 'Leah and Reuben snuggle up for a good book.', name: 'Leah reads to Reuben')

leah_photo3 = Photo.create(image_url: '../images/images_1x_2x/friends_family/leah_on_carousel.jpg', description: 'Leah enjoys quality time at the carousel.', name: 'Leah on Carousel')

leah.photos << leah_photo2 << leah_photo3







mischka_photo2 = Photo.create(image_url: '../images/images_1x_2x/friends_family/mischka_grins.jpg', description: 'Mischka grins in a fluffy way.', name: 'Mischka grins in a fluffy way')

mischka_photo3 = Photo.create(image_url: '../images/images_1x_2x/friends_family/mischka_reclines_on_bed.jpg', description: 'Mischka hangs out on the bed imploringly.', name: 'Mischka at rest.')

mischka_photo4 = Photo.create(image_url: '../images/images_1x_2x/friends_family/mischka_right_close.jpg', description: 'Mischka is smooshed.', name: 'Mischka right up close')

mischka_photo5 = Photo.create(image_url: '../images/images_1x_2x/friends_family/mischka_at_bat.jpg', description: 'Mischka loves to bat at just about anything that suggests string.', name: 'Mischka at bat')

mischka.photos << mischka_photo4 << mischka_photo5




barnaby = AboutMe.create(name: 'Barnaby', description: 'Barnaby the betta fish lived for 44 seemingly happy weeks before suddenly dying. We are not sure why. As of now we have not replaced him as we are not sure we will have fish anymore.')

barnaby.photos << barnaby_photo


