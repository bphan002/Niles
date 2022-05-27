# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create(
#     # [{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(
#     # name: 'Luke', movie: movies.first)

    User.destroy_all
    Product.destroy_all
    Review.destroy_all
    ActiveRecord::Base.connection.reset_pk_sequence!('users')
    ActiveRecord::Base.connection.reset_pk_sequence!('products')
    ActiveRecord::Base.connection.reset_pk_sequence!('reviews')
    
    demoUser = User.create(
        name:'demo',email: 'demouser@gmail.com', password:'123456')

    demoUser2 = User.create(
        name:'FakeReviewer',email: 'faker@gmail.com', password:'12345632e32'
    )

    demoUser3 = User.create(
        name:'FakeLiker',email: 'fakeliker@gmail.com', password:'12332s32'
    )

    demoUser4 = User.create(
        name:'ReviewsForFreeItems',email: 'freeakeliker@gmail.com', password:'12332s32'
    )

    demoUser5 = User.create(
        name:'Sora',email: 'frdfasder@gmail.com', password:'1s32ss32'
    )

    demoUser6 = User.create(
        name:'Musashi Miyamoto',email: 'fadfdfder@gmail.com', password:'zz32s32'
    )


    demoUser7 = User.create(
        name:'The Real Billy Phan',email: 'bphan@gmail.com', password:'1sx32s32'
    )

    require 'open-uri'
    
    # toys
    toys1 = Product.create(
        title: "LeapFrog 100 Animals Book, Pink", 
        bullet: [
            "Six double-sided, interactive pages feature animals from 12 categories such as the forest, the ocean and the shore",
            "Explore three play modes that teach about animal names, animal sounds and fun facts",
            "This fully bilingual book lets kids learn about animals and sing songs in English and Spanish",
            "Fun facts about animals provide an early introduction to science concepts",
            "Intended for ages 18+ months; requires 2 AA batteries; batteries included for demo purposes only; new batteries recommended for regular use"
        ],
        description: "Hold 100 animals in your hands with the touch-sensitive pages of the 100 Animals Book! Six double-sided, interactive pages feature animals from 12 habitats and environments. Kids have a natural curiosity about animals, and this book provides lots of opportunities for exploration with illustrations and photographs of animals from the desert, savanna, rain forest and more. Three modes teach about animal names, animal sounds and fun facts on each page. Switch the language setting to hear about the animals and listen to songs in either English or Spanish. Fun facts about animals promote early science awareness, making this book a must-have addition to every little learner's library. Intended for ages 18+ months. Requires 2 AA batteries. Batteries included for demo purposes only. New batteries recommended for regular use.", 
        category: "toys",
        price: 17.45,
        quantity: 5
    )

    toys1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys1.jpg')
    toys1.picture.attach( io: toys1Image, filename:'toys1.jpg')

    toys2 = Product.create(
        title: "ThinkFun Circuit Maze Electric Current Brain Game and STEM Toy for Boys and Girls Age 8 and Up - Toy of the Year Finalist, Teaches Players about Circuitry through Fun Gameplay",
        bullet: [
            "Trusted By Families Worldwide  With Over 50 Million Sold Thinkfun Is The WorldS Leading Manufacturer Of Brain Games And Mind Challenging Puzzles",
            "Develops Critical Skills – Gameplay Provides A Stealth Learning Experience, Where Players Develop Logical Reasoning And Planning Skills As They Play And Gain An Understanding Of How Circuits And Electrical Currents Work",
            "What You Get - Circuit Maze Is One Of The Best Gifts You Can Find For Boys And Girls Ages 8 And Up It Uses Real Circuits And Pieces To Create A Fun Gameplay And Stealth Learning Experience Comes With 60 Challenges Of Increasing Difficulty From Beginner To Expert", 
            "Requires 3 Aaa Batteries, Not Included",
            "Clear Instructions – Easy To Learn With A Clear, High Quality Instruction Manual You Can Start Playing And Solving Right Away"
        ],
        description: "Circuit Maze is one of ThinkFun's most popular stem toys for boys and girls, and was a Toy of the Year Award Finalist as well as a PAL Award winner. It's a logic game that teaches the basic principles of circuitry, comes with 60 challenges of increasing difficulty, from beginner to expert, and is a perfect holiday or birthday present for kids who like smart games and challenging activities. Circuit Maze is made with high quality components, and comes with a very clear and easy to understand instruction manual - you'll be able to play within minutes of opening the box. Like all of ThinkFun's games, Circuit Maze is built to develop critical thinking skills and relates to STEM subjects like science and engineering. Building and playing through the increasingly difficult challenges will improve logical reasoning, spatial reasoning and planning skills while learning the fundamentals of circuitry, all through fun gameplay.", 
        category: "toys",
        price: 37.99,
        quantity: 6
    )

    toys2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys2.jpg')
    toys2.picture.attach( io: toys2Image, filename:'toys2.jpg')
    
    toys3 = Product.create(
        title: "The Original Stomp Rocket Ultra Rocket Launcher (Ultra - 4 Rockets)", 
        bullet: [
            "100% KID powered: Run, jump and STOMP to launch these rockets up to 20 stories high -- that’s 200 feet in the air! No batteries required; easy, fast assembly.",
            "Includes a Stomp Launcher, 4 foam-tipped Ultra Stomp Rockets that work with three different Stomp Rocket Launch Sets.",
            "Great for year round fun to get kids away from screen time and more active outdoors.",
            "Award-winning products from industry experts, including iParenting Media, Dr. Toy, and Creative Child Magazine.",
            "Pair with Stomp Rocket Science book and get kids interested in STEM subjects (Science, Technology, Engineering, and Math) early. Ages 5 and up."
        ],
        description: "Stomp Rocket Ultra LED is 100% KID powered: Run, jump and STOMP to launch these rockets up to 150 feet in the air! Click to turn on the powerful LED light inside, and these Stomp Rockets will really shine in the night sky, so it’s fun to play outdoors after dusk and on gloomy days too. Light up the night with vibrant color. The LED lights inside these rockets make them bright enough to double as a flashlight! Stomp Rocket Ultra LED is strong and durable, and great for active, outdoor play. Stomp Rockets have won lots of awards from industry experts, including iParenting Media, Dr. Toy and Creative Child Magazine. Includes a Stomp Launcher, 4 foam-tipped Stomp Rockets with LED lights inside and a Refill Pack that contains 2 foam-tipped Ultra LED Stomp Rockets — each rocket has an LED light inside that’s bright enough to double as a flashlight! For kids ages 6 and up.",
        category: "toys", 
        price: 26.99,
        quantity: 9
    )

    toys3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys3.jpg')
    toys3.picture.attach( io: toys3Image, filename:'toys3.jpg')
    
    toys4 = Product.create(
        title: "LEGO Creator Mighty Dinosaurs 31058 Build It Yourself Dinosaur Set, Create a Pterodactyl, Triceratops and T Rex Toy (174 Pieces)", 
        bullet:[
            "Kids will enjoy embarking on dinosaur adventures with this 3-in-1 dinosaur playset that transforms into a Pterodactyl, Triceratops and T Rex Toy Each dinosaur toy will create hours of pretend play for kids",
            "There are a variety of dinosaur accessories included, such as bright orange eyes, posable joints and head, large claws and an opening mouth with pointed teeth Plus, dinosaur prey that comes in the form of a buildable rib cage",
            "Your kid can engage in creative play by building multiple green dinosaurs from this set of beige and dark-green bricks",
            "This LEGO Creator 3-in-1 kids dinosaur toy provides a unique build and play experience in which kids can play with a mix of dinosaur models Ideal for kids ages 7, 8, 9 and older",
            "This kids dinosaur toy creates a T Rex that measures over 4-inch (11cm) tall, a Triceratops toy that measures over 3-inch (9cm) tall and a Pterodactyl that measures over 1-inch (4cm) high, 7-inch (18cm) long and 9inch (25cm) wide"
        ],
        description: "Your kids will engage in endless hours of creative play with this 3-in-1 LEGO Creator Mighty Dinosaurs set. The build and play set creates a T. Rex with dark-green and beige color scheme, bright orange eyes, posable joints and head, large claws and an opening mouth with pointed teeth. Kids will also have a chance to engage in creative play by building a Triceratops or a Pterodactyl from the same beige and dark-green bricks. Plus, this dinosaur toy is accompanied with dinosaur prey in the form of a buildable rib cage.",
        category: "toys",
        price: 11.99,
        quantity: 7
    )

    toys4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys4.jpg')
    toys4.picture.attach( io: toys4Image, filename:'toys4.jpg')
    
    toys5 = Product.create(
        title: "Fisher-Price Rattle 'n Rock Maracas, Blue/Orange [Amazon Exclusive] 2 Count (Pack of 1)", 
        bullet:[
            "Includes 2 toy maracas",
            "Sized just right for little hands to grasp and shake",
            "Colorful beads make fun rattle sounds when shaken",
            "Soft, colorful pom-poms"
        ],
        description: "These rockin' maracas are just the right size for your baby's little hands to grasp and shake! With soft, fabric pom-poms and colorful beads that make fun rattle sounds, these maracas will get your little one rattling and rocking to the beat in no time! Where development comes into play Gross Motor: All that grasping and rattling gives your baby's gross motor skills a great workout! Sensory: The variety of colors, textures, and fun rattle sounds help stimulate your baby's developing senses.",
        category: "toys",
        price: 7.99,
        quantity: 9
    )

    toys5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys5.jpg')
    toys5.picture.attach( io: toys5Image, filename:'toys5.jpg')
    
    toys6 = Product.create(
        title: "Nuby Floating Purple Octopus with 3 Hoopla Rings Interactive Bath Toy", 
        bullet:[
            "Let bath time ten-tickle your little one’s imagination! With Nuby’s Octopus Hoopla, getting clean has never been more fun",
            "The Octopus Hoopla is a floating bath toy with 3 rings that encourages interactive play; Your child will be wrapped up in fun for hours, or at least until bath time is over",
            "Helping your little one grow and learn is rewarding as a parent; Give your child the tools to learn and play with a toy designed to help develop hand-eye coordination and stimulate their senses",
            "The Octopus Hoopla bath toy’s vibrant colors and different textures are designed to engage your child’s senses; Vivid colors draw your child’s attention while friendly characters help them learn to recognize shapes",
            "With so many bath toys mold often becomes an issue (here’s looking at you, rubber duckie); The Octopus Hoopla is thoughtfully designed to help avoid mold issues and keep your child healthy and happy during bath time"
        ],
        description: "The octopus hoopla by Nuby is another fun and interactive toy that teaches coordination, encourages development and provides hours of enjoyment. Bright colors and fun shapes make octopus hoopla a bath time favorite! All Nuby products are made of safe, durable materials that exceed all government safety regulations and standards.",
        category: "toys",
        price: 7.53,
        quantity: 22
    )
    
    toys6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys6.jpg')
    toys6.picture.attach( io: toys6Image, filename:'toys6.jpg')

    toys7 = Product.create(
        title: "Baby Einstein Baby's First Music Teacher Developmental Toys Kit and Gift Set, Newborn and up", 
        bullet:[
            "Extraordinary value and variety inside this boxed play set that helps expose your little one to music with an award-winning developmental Baby Einstein item, plus other best sellers",
            "Includes 8 items: 4 baby musical toys; a board book; downloadable DIY activities; details for streaming Baby Einstein music on Spotify and edutainment videos on YouTube; and exclusive offers for Kinedu and Good Buy Gear",
            "Features: Discover & Play Piano Baby Toy Piano; Take Along Tunes Musical Toy; Rattle & Jingle Trio Take-Along Toy Rattle Set; Ocean Glow Sensory Shaker Musical Toy; and Music Under the Sea Board Book",
            "40+ sounds and melodies provide a thorough introduction to classical music and instruments, while aiding in auditory development through sound recognition",
            "Classical music is soothing for little ones and helps boost speech processing abilities, pattern perception skills, and creativity—and volume control buttons are music to mom and dad’s ears!"
        ],
        description: "Your little one's brain is prewired to learn music, just as it's prewired to learn language. This Baby’s First Music Teacher™ Developmental Toy Kit from Baby Einstein™ will help you cultivate their natural curiosity while sparking a potentially lifelong love of music. As a gift box, it delivers a delightful unboxing experience with 8+ items inside. The Discover & Play Piano™ features soft cloth keys that invite baby to unleash their inner composer while discovering instruments, numbers, and animals. With thousands of 5-star ratings, Take Along Tunes™ empowers infants to switch between 10 classic melodies. They’ll love having the freedom to explore their musical preferences. Take the Rattle & Jingle Trio™ everywhere from the stroller to the restaurant table to help your little one discover cause and effect. Gentle lights, sounds, and textures accompany reimagined classical melodies on the Ocean Glow Sensory Shaker™ Baby Rattle. Cozy up for storytime with the Music Under the Sea™ Board Book, and show your little one all the different instruments inside, including maracas and a flute. In short, this play kit of baby & toddler toys provides support for music-loving parents and caregivers who want to share their passion with their little ones. It makes an impressive gift set, appropriate for ages newborn and up. Everything’s gender neutral, so it works as a baby shower gift for a boy or girl—or even special occasions like baby’s first Christmas. Batteries are not included.",
        category: "toys",
        price: 39.99,
        quantity: 22
    )

    toys7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys7.jpg')
    toys7.picture.attach( io: toys7Image, filename:'toys7.jpg')
    
    toys8 = Product.create(
        title: "LEGO Chain Reactions (Klutz Science/STEM Activity Kit), 9' Length x 1.06' Width x 10' Height", 
        bullet:[
            "Nappa silver award winner",
            "Design and build 10 amazing moving machines - teach your bricks new tricks",
            "Comes with 80 page instructions, 33 LEGO pieces, Instructions for 10 modules, 6 plastic balls, string, paper ramps and other components",
            "Includes a 80 page instructional book with Klutz Certified crystal clear instructions",
            "Includes more than 30 essential LEGO elements"
        ],
        description: "LEGO Chain Reactions is packed full of ideas, instructions, and inspiration for 10 LEGO machines that spin, swing, pivot, roll, lift, and drop. Each machine alone is awesome, but put them together and you get incredible chain reactions. Then, combine the machines in any order you like to create your own chain reactions. Our team of experts worked with educators and 11-year-olds to invent the machines, then wrote a book that teaches the skills (and some of the physics behind the fun) kids need to create their own amazing chain reaction machines. Our book includes 33 special LEGO elements that combine with basic bricks from your collection to make your machines go. But don’t worry that you won’t have the right bricks; we worked with the folks at LEGO to make sure you’ll need only the most common bricks, and that there are plenty of substitutes. The result is a chain reaction of fun, as one thing leads to another… and another… and another. Comes with: 78 page book, 33 LEGO elements, 6 LEGO balls, 6 feet of string, 8 paper ramps, 2 paper pop-up signs, 1 paper funnel ramp, 1 paper flag, 1 paper bucket, 1 platform",
        category: "toys",
        price: 18.99,
        quantity: 32
    )

    toys8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys8.jpg')
    toys8.picture.attach( io: toys8Image, filename:'toys8.jpg')
    
    toys9 = Product.create(
        title: "VTech Pop-a-Balls Push and Pop Bulldozer Amazon Exclusive,Red", 
        bullet:[
            "Push the handle to roll the red bulldozer across the floor and watch it pop balls out of the chimney into the bucket",
            "Press the buttons to learn colors, numbers, phrases and music",
            "Roll the bulldozer and trigger motion sensors to listen to fun tunes and songs on the move stimulating attention and coordination",
            "Grab the chunky handle to encourage motor skill development",
            "This interactive bulldozer requires 2 AAA batteries batteries included for demo purposes only, replace new ones for regular use"
        ],
        description: "POP, drop and watch your little one stroll along with the online exclusive red pop-a-balls push and pop bulldozer by VTech! this delightful bulldozer encourages movement and motor skills in your little Builder when the colorful balls pop up through the chimney, into the scoop bucket and back again. Load the balls into the bulldozer, start pushing the chunky handle and then watch the bulldozer come to life with Poppin' balls and fun tunes! your little one can also sit and play with the bulldozer by pressing the buttons to learn colors, numbers and music. This interactive bulldozer requires 2 AAA batteries (batteries included for demo purposes only, replace new ones for regular use).",
        category: "toys",
        price: 27.99,
        quantity: 32
    )

    toys9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys9.jpg')
    toys9.picture.attach( io: toys9Image, filename:'toys9.jpg')
    
    toys10 = Product.create(
        title: "Sassy Stacks of Circles Stacking Ring STEM Learning Toy, Age 6+ Months, Multi, 9 Piece Set", 
        bullet:[
            "Straight post accepts different sized rings, strengthening hand-eye coordination",
            "Chunky rings make it easy for baby to grasp, strengthening fine motor skills",
            "Each ring features a different texture and weight; Textural variety is great for mouthing!",
            "Colorful beads in the clear ring allowing baby to connect the sound to sight",
            "9 piece set"
        ],
        description: "Stacking rings has never been more fun with the Stacks of Circles! The center of each ring is the same size, allowing it to be stacked in any direction for frustration-free play. The Stacks of Circles promotes early STEM learning by teaching a child about sorting, size, sequencing and building.",
        category: "toys",
        price: 8.99,
        quantity: 32
    )

    toys10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys10.jpg')
    toys10.picture.attach( io: toys10Image, filename:'toys10.jpg')
    
    toys11 = Product.create(
        title: "TeeTurtle | The Original Reversible Octopus Plushie | Patented Design | Purple and Blue | Show your mood without saying a word!", 
        bullet:[
            "This award-winning, #1 best-selling plushie has taken TikTok by storm! Your favorite creators have it, and now you can too!",
            "\"The reversible mood octopus is pretty much a 2021 Beanie Baby\" - The Today Show",
            "This sensory fidget toy is perfect for stress relief, and lets you show your mood without saying a word! Get this award-winning Octopus Plushie to show your friend and family how you're really feeling.",
            "Over 24,000 5 star reviews! Kids and adults alike will love the supersoft fabric and portable size of the plushies. Not to mention, they flip INSIDE OUT, thanks to TeeTurtle’s patented Reversible Plushie design.",
            "Collect them all! TeeTurtle makes reversible unicorns, narwhals, cats, dogs, pandas, turtles, and more, in tons of different colors!"
        ],
        description: "TeeTurtle is the home of the original Reversible Octopus Plushie! Show your mood to the world with this cute reversible plush Octopus, as seen on TikTok! They are easy to flip inside out, and have two different faces to help you express yourself. These super soft toys are perfect for playing, collecting, and cuddling. They make the perfect gift for holidays, birthdays, baby showers, Christmas, Valentine’s Day, and more! Reversible Octopus Plushies are protected by multiple U.S. Copyright Registrations including Registration No. VA0002103871, U.S. Design Patent Nos. D836,168; D822,127; and D860,337, U.S. Utility Patent No. 10,786,746 B2 and trade dress rights under the Lanham Act.",
        category: "toys",
        price: 10.49,
        quantity: 11
    )

    toys11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys11.jpg')
    toys11.picture.attach( io: toys11Image, filename:'toys11.jpg')
    
    toys12 = Product.create(
        title: "Crayola Light Up Tracing Pad with Night Mode, Amazon Exclusive, Gift, Ages 6, 7, 8, 9, 10", 
        bullet:[
            "CRAYOLA LIGHT UP TRACING PAD: Features a Light Up Tracing Pad with Eye-Soft Technology and White LEDS, 3-Mode Switch (Off/On/Auto), 20 Tracing Paper Sheets, 12 Short Colored Pencils, and 1 Number 2 Pencil (3 AA Batteries Required. Sold Separately)",
            "EYE SOFT TECHNOLOGY: Automatically adjusts for low-light conditions by reducing glare from standard white LEDs",
            "LIGHT UP TOY: The evenly lit surface makes tracing lines easy to see, even in pillow forts or camping tents with low lighting, Plus, it perfectly pairs with glow in the dark toys at home",
            "GIFT FOR GIRLS & BOYS: A birthday or holiday gift you can rely on for big smiles and hours at a time of imaginative fun, Recommended for ages 6 and up"
        ],
        description: "Learn to draw like a professional artist with the Crayola Light Up Tracing Pad! This fun art set now features Eye-Soft Technology which automatically adjusts for low-light conditions by producing a soft amber glow and reducing glare from standard white LEDs. The evenly lit surface makes tracing lines easy to see—even in a dark room! Kids can trace photographs, prints, coloring pages, and more! Features a Light Up Tracing Pad with Eye-Soft Technology and White LEDS, 3-Mode Switch (Off/On/Auto), 20 Tracing Paper Sheets, 12 Short Colored Pencils, and 1 Number 2 Pencil (3 AA Batteries Required. Sold Separately). Makes a great holiday or birthday gift for boys and girls, ages 6 and up.",
        category: "toys",
        price: 22.37,
        quantity: 113
    )

    toys12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/toys/toys12.jpg')
    toys12.picture.attach( io: toys12Image, filename:'toys12.jpg')
    
    #food 
    food1 = Product.create(
        title: "Welch's Fruit Snacks, Mixed Fruit, Gluten Free, Bulk Pack, 0.9 oz Individual Single Serve Bags 40 Count (Pack of 1)", 
        bullet:[
            "Includes (40) 0.9 oz single serving bags",
            "Delicious fruit snacks where fruit is the 1st Ingredient",
            "100% Vitamin C, 25% Vitamins A&E (DV per serving)",
            "Gluten free, fat free & preservative free",
            "Perfect tasty snack for school lunches, sporting games, the office and more"
        ],
        description: "Welch's Fruit Snacks Mixed Fruit. Family farmer owned.80 Calorie pouches. Fruit is our 1st ingredient. Natural & artificial flavors. Made with real fruit. DV per serving: 100% Vitamin C. 25% Vitamins A & E. Fat free. Gluten free. No preservatives.",
        category: "food",
        price: 7.98,
        quantity: 323
    )

    food1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food1.jpg')
    food1.picture.attach( io: food1Image, filename:'food1.jpg')
    
    food2 = Product.create(
        title: "Enfamil Baby Vitamins Enfamil Poly-Vi-Sol 8 Multi-Vitamins & Iron Supplement Drops for Infants & Toddlers, Supports Growth & Development, 50 mL Dropper Bottle", 
        bullet:[
            "MULTI-VITAMIN with IRON SUPPLEMENT FOR BABIES: Contains multivitamins with Iron for infants and toddlers",
            "SUPPORT GROWTH and DEVELOPMENT: This liquid multivitamin with Iron helps support growth and development with 8 essential vitamins and Iron",
            "DID YOU KNOW: Poly-Vi-Sol with Iron helps ensure babies' picky diets are being supplemented with iron",
            "NO ARTIFICIAL COLORS and FLAVORS: Does not contain artificial colors and flavors and is also Gluten-free",
            "FORMAT and USAGE: Easy to use dropper to dispense directly into the mouth or mixed with other foods (breast milk, formula, juice, cereal etc.) to increase acceptance; 50 uses for 50 ml"
        ],
        description: "When transitioning your baby to solid foods, Enfamil Poly-Vi-Sol available with or without iron helps make sure they are still getting the childrens vitamins they need to support healthy growth, like vitamins A, C, D, E, and some B vitamins. Enfamil kids vitamins can be easily given by dispensing directly into the mouth or mixed with breast milk, baby formula, juice, cereal or other foods to increase acceptance. All Enfamil baby liquid multivitamins are gluten free and have no artificial colors or flavors. This statement has not been evaluated by the Food and Drug Administration. This product is not intended to diagnose, treat, cure or prevent any disease.",
        category: "food",
        price: 8.68,
        quantity: 32
    )

    food2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food2.jpg')
    food2.picture.attach( io: food2Image, filename:'food2.jpg')
    
    food3 = Product.create(
        title: "Jumex Peach Nectar, 33.8 FL OZ.", 
        bullet:[
            "THE TRUE FLAVOR OF MEXICO: We make our peach nectar from pureed peaches and water, lightly sweetened for a fresh and refreshing taste",
            "IT'S VERSATILE: Enjoy it chilled out of the box, over ice, or as a mixer for tropical drinks",
            "THE SMOOTHIE SHORTCUT: Try blending with ice and fresh fruit or vegetables",
            "MORE FLAVOR, LESS GUILT: Enjoy great taste, with zero fat and zero cholesterol",
            "NO REFRIGERATION REQUIRED: This 33.8 fluid ounce Tetra Pak box contains about four servings. It's ultrasonically sealed for freshness, and 100% recyclable."
        ],
        description: "Jumex has been one of Mexico's most beloved brands of juices and nectars for more than 60 years. Try one yourself and you'll see why. They use the freshest, highest quality fruits grown in Mexico, with minimal processing to capture their fresh taste. Jumex juices and nectars are absolutely amazing straight out of the refrigerator on a hot day... or try them over ice, or as a mixer for tropical beverages and smoothies. You'll get a 33.8 fluid ounce resealable Tetra Pak box containing about four servings.",
        category: "food",
        price: 1.24,
        quantity: 32
    )
    
    food3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food3.jpg')
    food3.picture.attach( io: food3Image, filename:'food3.jpg')

    food4 = Product.create(
        title: "Alfaro's Original Artesano Bakery Bread, Thick Slices & Soft Texture, 15 slices, 20 oz", 
        bullet:[
            "The original Artisan-style sliced bread",
            "Sliced thick with a dash of flour dusting and a mouthwateringly soft texture",
            "Elevates your everyday meals into something remarkable for the whole family",
            "Great for Grilled Cheese, French Toast, Garlic Bread, Deli Sandwiches, a BLT and more!",
            "Made With No High Fructose Corn Syrup OR Artificial Colors or Flavors"
        ],
        description: "Introducing the newest addition to the Alfaro's Bread family, Artesano, an Artisan style bread. Sliced thick with a mouthwateringly soft texture, Artesano transforms the routine into remarkable. With its rich flavor and distinctly creamy character, the flavors you love just taste better. Artesano is made without high fructose corn syrup, added flavors or colors.",
        category: "food",
        price: 3.99,
        quantity: 11
    )

    food4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food4.jpg')
    food4.picture.attach( io: food4Image, filename:'food4.jpg')
    
    food5 = Product.create(
        title: "Nutella Chocolate Hazelnut Spread, Perfect Topping for Easter Treats, 35.2 oz Jar", 
        bullet:[
            "One 35.2 oz jar of delicious Nutella hazelnut spread, the perfect topping for pancakes, waffles, toast, and more!",
            "The Original Hazelnut Spread…unique in all the world.",
            "Made from quality ingredients like roasted hazelnuts and cocoa.",
            "Packaged in the iconic Nutella jar.",
            "PERFECT FOR EASTER: Brighten your basket this holiday season with the delicious taste of chocolate hazelnut spread and make Nutella an Easter breakfast gift they'll love"
        ],
        description: "The great taste of Nutella makes weekend breakfasts even more special. Spread it on warm toast, bananas, pancakes, waffles it’s up to you. Nutella is a quick, easy way to bring a smile to the breakfast table. And you can feel good knowing it’s made with quality ingredients like roasted hazelnuts and cocoa. No wonder The Original Hazelnut Spread is a favorite all over the world. Your weekend deserves Nutella.",
        category: "food",
        price: 9.89,
        quantity: 12
    )

    food5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food5.jpg')
    food5.picture.attach( io: food5Image, filename:'food5.jpg')
    
    food6 = Product.create(
        title: "Cedar's MEDITERRANEAN FOOD Cucumber & Garlic Tzatziki, 12 Ounce", 
        bullet:[
            "Product Type:Vegetable",
            "Item Package Dimensions:4.75  L X 4.75 W X 2.5  H",
            "Item Package Weight:0.79 lbs",
            "Country Of Origin: United States"
        ],
        description: "Smooth, creamy and bold, this recipe brings cucumbers and garlic together with our authentic Greek yogurt made with milk from cows not treated with bovine growth hormones, for a dip that's spreadable and delicious. Put on your favorite sandwich, or use as a dip for chips, crackers, and veggies.",
        category: "food",
        price: 3.99,
        quantity: 53
    )

    food6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food6.jpg')
    food6.picture.attach( io: food6Image, filename:'food6.jpg')
    
    food7 = Product.create(
        title: "Chocolate Caramel and Crunch Grand Gift Basket for Father's Day, Holiday, Snack, Business, Office and Family", 
        bullet:[
            "Best selling deliciousness: thousands upon thousands of gift-givers can't be wrong! One taste of our prized gourmet, gooey caramel corn, including both straight caramel and real-chocolate drizzled, generously heaped into this basket full of favorites, and you will understand why",
            "Handmade chocolates, handmade caramel corn. We pop fresh popcorn, melt real Challenge butter and caramel, and drench it in the rich, thick goodness. The melters are full of real chocolates, pouring out pans of chocolate barks, pressing whole almonds into the warm, thick Slabs. Nothing but the best will do for our favorite people-ourr customers-givingg to their favorite people",
            "A gift large enough for the whole office and entire family. Added to the caramel corns and Ghirardelli's finest are heaping handfuls of chocolate-covered sea salt Cashews, chocolate-covered pretzels, caramel drizzled pretzels, peanut brittle, and scrumptious handmade chocolate Almond bark.",
            "Ghirardelli Chocolate squares: a half-dozen assorted dark and caramel real chocolate squares from the famous San Francisco chocolatier. Renowned chocolates everyone on your list will recognize",
            "See alternate image for Instruction on how to include A GIFT MESSAGE. Be sure to sign your name and/or your company, so your recipient KNOWS who to thank",
            "Allergen Information: wheat"
        ],
        description: "Two large bags of hand-popped gourmet gooey caramel corn made with rich, creamy real butter pairs with two bags of sweet chocolatey pretzels and white chocolate, Caramel drizzled pretzels, crunchy peanut brittle, chocolate-covered sea salt Cashews, real chocolate Almond bark, and a half-dozen of ghirardelli's fine individually wrapped chocolate squares. A gift that will delight the whole office or the entire family, there are tasty handfuls of yummy deliciousness, attractively packed into a reusable seagrass basket and tied with a ribbon for perfect holiday or party presentation.",
        category: "food",
        price: 42.95,
        quantity: 1)

    food7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food7.jpg')
    food7.picture.attach( io: food7Image, filename:'food7.jpg')
    
    food8 = Product.create(
        title: "Taylor Farms Lemon Pesto Meal Kit, 17.5 oz", 
        bullet:[
            "Healthy, on trend meal solution that can be paired with any protein or eaten as a standalone Vegetarian option",
            "Serves two as a meal or four as a side",
            "From bag to table in less than 10 minutes",
            "Simple, quick, one pan meal"
        ],
        description: "Blend of veggies (broccoli, carrots, and cauliflower) paired with a light, lemony pesto cooking oil and nutty Parmesan cheese",
        category: "food",
        price: 3.20,
        quantity: 0
    )

    food8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food8.jpg')
    food8.picture.attach( io: food8Image, filename:'food8.jpg')
    
    food9 = Product.create(
        title: "Home Brew Ohio Orchard Breezing Pomegranate Wild berry Zinfandel Kit", 
        bullet:[
            "Pomegranate Wild berry Zinfandel Ingredient Kit",
            "Makes 6 gallons with easy to follow directions",
            "This red wine brings together juicy and sweet flavors of wild berries and the rich and crisp notes of orchard fresh pomegranates",
            "Country of origin: Canada"
        ],
        description: "This red wine brings together juicy and sweet flavors of wild berries and the rich crisp notes or orchard fresh pomegranates. Combined with the rich flavor of Zinfandel, this delicious elixir is best enjoyed chilled. Orchard Breezing Pomegranate Wild berry Zinfandel Kit, Country of origin - Canada, Manufacturer name - Home Brew Ohio.",
        category: "food",
        price: 73.95,
        quantity: 13
    )

    food9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food9.jpg')
    food9.picture.attach( io: food9Image, filename:'food9.jpg')
    
    food10 = Product.create(
        title: "Tillamook Country Smoker Real Hardwood Smoked Sausages, Teriyaki, 15.2 Ounce Tall Jar, 20 Count", 
        bullet:[
            "Teriyaki Smoked Sausages: Our Teriyaki is a crowd favorite, the perfect marriage of sweet and savory; We like to eat ours with our eyes closed dreaming of Hawaii; Comes in a resealable jar",
            "Perfect Protein On the Go: With 9 grams of protein per serving, our artfully smoked, premium meat sticks make for a perfect portable protein snack anytime to keep you satisfied and energized on the go",
            "Shop Our Whole Range: We make a wide variety of jerky and meat sticks, including Keto Friendly Zero Sugar, Old Fashioned, Teriyaki, Pepperoni, Spicy Jalapeño, Sweet and Spicy, Pepper, and more",
            "Crafted by the Best: We use only the best beef, pork, and seasonings fresh from the farm; Smoking our meat sticks over real hardwood gives them an unparalleled taste; No shortcuts, just fire and smoke and patience",
            "Handcrafted in Oregon: For over 4 decades, we’ve been making mouth watering smokehouse snacks, the kind you can only get when you mix hard work, simple ingredients and real hardwood smoke"
        ],
        description: "The Tillamook Country Smoker Teriyaki Stick in a 20ct recloseable Jar is made with high-quality beef and pork as well as 100% real hardwood smoked. Seasoned with our original recipe, soy sauce with a touch of garlic. Simply crafted with simple ingredients to be simply better. High in protein and premium beef and pork. Tillamook Country Smoker Teriyaki Stick is a great snack anytime, whether you are at work or play a great way to snack between meals. Tillamook Country Smoker is a 45-year-old company based in Bay City, Oregon U.S.A. using our original family recipes. Art Crossley started making our perfectly smoked meats at his family butcher shop in Bay City and soon moved into our current location in the early 70's. As word spread so did the Tillamook Country Smoker distribution. We now enjoy nationwide sales and are growing more each day.",
        category: "food",
        price: 16.99,
        quantity: 11
    )

    food10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food10.jpg')
    food10.picture.attach( io: food10Image, filename:'food10.jpg')
    
    food11 = Product.create(
        title: "Quorn Foods Meatless Roast, Vegetarian, Frozen, 16 Oz", 
        bullet:[
            "Contains one frozen 16oz box of Quorn Meatless Roast",
            "Quorn meatless roast is a vegetarian alternative to turkey that tastes delicious and has an amazing meat-like texture",
            "Excellent source of protein (15g per serving); soy-free; non-GMO; suitable for gluten-free diets",
            "Amazingly versatile, slice it up and serve along with your favorite sides or enjoy as a sandwich; enjoy on Thanksgiving or year-round as the main dish for family dinners or a weeknight meal",
            "Sustainably produced with mycroprotein which has a 70% lower carbon footprint than chicken production according to Quorn's 2019 Sustainability Report"
        ],
        description: "The Quorn Meatless Roast is a turkey-style meat alternative that tastes delicious and has an amazing meat-like texture. Slice it up and serve along with your favorite Sides or enjoy as a tasty sandwich. The meatless roast is a popular dish to be served during the Thanksgiving holiday, but it can also be enjoyed year-round as the main dish for family dinners or a weeknight meal. Easy to prepare in 60 minutes in the oven. This is made with quorn's unique protein called mycoprotein, a sustainably sourced super-protein that is naturally high in protein and fiber. Producing mycoprotein uses less land and water than animal protein production, so it's better for the planet too!",
        category: "food",
        price: 8.99,
        quantity: 90
    )
    
    food11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food11.jpg')
    food11.picture.attach( io: food11Image, filename:'food11.jpg')

    food12 = Product.create(
        title: "Blue Diamond Almonds, BOLD Wasabi & Soy Sauce Snack Nuts, 40 Oz Resealable Bag", 
        bullet:[
            "Contains 1 - 40 ounce bag of Blue Diamond BOLD Wasabi & Soy Sauce Snack Almonds",
            "A flavorful snack with a great wasabi kick and a salty, sweet finish",
            "Low in carbs and high in protein",
            "Resealable bag makes this a perfect travel snack for adults and children on the go",
            "Free of cholesterol and trans fat, high in fiber, and an excellent source of Vitamin E. Scientific evidence suggests, but does not prove, that eating 1.5 oz. per day of most nuts, such as Almonds, as part of a diet low in saturated fat and cholesterol may reduce the risk of heart disease. See nutritional information for fat content 28 Almonds have 5g plant protein per serving and are an excellent source of antioxidant Vitamin E and a good source magnesium."
        ],
        description: "Blue Diamond Almonds Bold Wasabi & Soy Sauce. Consistent quality, bold new flavors and great value. Roasted and seasoned with spicy Bold flavors. Combining the distinctive flavor of Asian style horseradish with the savory taste of soy sauce. Good source of fiber & protein. Contains no cholesterol, artificial ingredients.",
        category: "food",
        price: 16.53,
        quantity: 0
    )

    food12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/food/food12.jpg')
    food12.picture.attach( io: food12Image, filename:'food12.jpg')
    
    #beauty
    beauty1 = Product.create(
        title: "Bobbi Brown Skin Foundation Stick, 9 Chestnut, 0.31 Ounce", 
        bullet:[
            "Formulated with skintone correcting pigments.",
            "It delivers medium-to-full coverage",
            "Cover imperfections and redness"
        ],
        description: "Cover imperfections and redness using this foundation stick formulated, with skintone correcting pigments. It provides a medium to full coverage and is enriched with olive extract with shea butter, which leaves skin moisturised and smooth.",
        category: "beauty",
        price: 25.89,
        quantity: 0
    )

    beauty1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty1.jpg')
    beauty1.picture.attach( io: beauty1Image, filename:'beauty1.jpg')
    
    beauty2 = Product.create(
        title: "NARS Radiant Creamy Concealer, Custard, 0.22 Ounce", 
        bullet:[
            "Coveted by artists for its luxurious texture and luminous finish, new radiant creamy concealer evens skin with lightweight medium to high buildable coverage",
            "Long wearing and crease-proof",
            "100 Percent authentic"
        ],
        description: "Coveted by artists for its luxurious texture and luminous finish, new radiant creamy concealer evens skin with lightweight medium to high buildable coverage. Long wearing and crease-proof.",
        category: "beauty",
        price: 31.00,
        quantity: 98
    )

    beauty2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty2.jpg')
    beauty2.picture.attach( io: beauty2Image, filename:'beauty2.jpg')
    
    beauty3 = Product.create(
        title: "Tarte Tartelette Toasted Eyeshadow Palette", 
        bullet:[
            "12 x .053 oz. all-new warm & cozy shades"
        ],
        description: "Lets you mix & match 12 warm, rich eyeshadows (7 wearable mattes & 5 lustrous shimmers), arranged in separate rows to make 3 easy-to-DIY looks. The super blendable Amazonian clay-infused powder formula glides on like a cream, providing long-wearing, intense payoff thats never chalky or patchy.Includes 12 eyeshadows: s'more (pinky beige) sunrise (golden beige) sunset (bronze) crackle (brown with gold flecks) cashmere (pale peach) warmth (terracotta) flame (metallic rust) cozy (brick) candle (champagne) latte (tan) simmer (copper) fireside (deep plum)",
        category: "beauty",
        price: 34.89,
        quantity: 81
    )

    beauty3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty3.jpg')
    beauty3.picture.attach( io: beauty3Image, filename:'beauty3.jpg')
    
    beauty4 = Product.create(
        title: "REVLON x Ashley Graham Tropical Vibes Makeup Kit in Tropical Pop, Lip gloss, Face and Eyeshadow palette, Pack of 2", 
        bullet:[
            "Get a beachy glow courtesy of Ashley Graham, who specially curated these limited-edition products and shades inspired by her go-to vacation makeup looks",
            "You can use this kit to enhance your natural daytime glow with a subtle touch of sparkle, then take it up a notch with a fun tropical pop of color for your poolside night out",
            "Lip Highlight in Island Hopping, to give lips a sparkling highlight reminiscent of the gleaming turquoise waters of the Caribbean",
            "Post Beach Glow Eye & Face Kit, an all-in-one face and eye palette that lets you bronze, highlight, and create a bold eye makeup look with just one makeup kit"
        ],
        description: "Dive into the sunny shades of the tropics with this luminous, island-inspired collection curated by supermodel and entrepreneur, Ashley Graham. Now you can keep your vacation makeup minimal with this makeup kit that carries you through the day relaxing beachside to an all-night pool party. The best part of this collection? No vacation needed here to look sunkissed. This kit has Ashley’s picks for easy day-to-night makeup looks for your next beach vacation (or staycation). This kit includes two of Ashley’s vacation makeup essentials: the all-in-one Post Beach Glow Eye & Face makeup kit and a Lip Highlight. Our Lip Highlight in Island Hopping gives lips a sparkling highlight reminiscent of the gleaming turquoise waters of the Caribbean, while the Post Beach Glow Eye & Face Kit lets you bronze, highlight, and create a bold eye makeup look with just one palette—both easy to use and easy to pack!",
        category: "beauty",
        price: 22.88,
        quantity: 98
    )

    beauty4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty4.jpg')
    beauty4.picture.attach( io: beauty4Image, filename:'beauty4.jpg')
    
    beauty5 = Product.create(
        title: "NYX PROFESSIONAL MAKEUP Lift & Snatch Eyebrow Tint Pen, Brunette", 
        bullet:[
            "Instant Lift Eyebrow Pen: This flexible micro brush tip pen allows you to create thin to thick lines that actually look like hairs IRL; Tinted, buildable shades allow you to go from a super natural to super snatched in a few quick flicks",
            "For A Lifted Look That Stays: This pen features a flexi microtip for custom hair widths, allowing you create a brow from nothing, fill in sparse areas, or build on top of your already snatched brows",
            "Line, Fill, Shape and Set: We've got everything you need to create beautiful eyebrows, including brow gels, precision brow pencils, pomades, powders, stylers, setters, tinted mascaras and more",
            "Cruelty Free Cosmetics: We believe animals belong in our arms, not in a lab; All of our makeup is certified and acknowledged by PETA as a cruelty free brand; We don't test any of our products on animals",
            "Discover NYX Professional Makeup: Try all of our professional makeup and beauty products today, from eyeshadow, eyeliner, mascara and false lashes to lipstick, foundation, primer, blush, bronzer, brushes and more"
        ],
        description: "Get a lifted brow look, in a pen. This flexible micro-brush tip pen allows you to create thin to thick lines that actually look like hairs IRL",
        category: "beauty",
        price: 8.81,
        quantity: 31
    )

    beauty5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty5.jpg')
    beauty5.picture.attach( io: beauty5Image, filename:'beauty5.jpg')
    
    beauty6 = Product.create(
        title: "NYX PROFESSIONAL MAKEUP Control Freak Eyebrow Gel - Clear", 
        bullet:[
            "Fill And Hold Eyebrow Gel: This Eyebrow Gel offers a new way to tame those arches fast; The clear formula works great with powders and pencils to fill in brows, seal the deal and hold them in place",
            "Non Sticky Defining Formula: The unique, non sticky formula is comfortable to wear all day and can double as a clear mascara that defines, separates and enhances the natural curl of lashes",
            "Line, Fill, Shape and Set: We've got everything you need to create beautiful eyebrows, including brow gels, precision brow pencils, pomades, powders, stylers, setters, tinted mascaras and more",
            "Cruelty Free Cosmetics: We believe animals belong in our arms, not in a lab; All of our makeup is certified and acknowledged by PETA as a cruelty free brand; We don't test any of our products on animals",
            "Discover NYX Professional Makeup: Try all of our professional makeup and beauty products today, from eyeshadow, eyeliner, mascara and false lashes to lipstick, foundation, primer, blush, bronzer, brushes and more"
        ],
        description: "Out of control brows have you flustered? NYX Professional Makeup's Control Freak Brow Gel offers a new way to tame them fast. The clear formula works well over powder or pencil to seal the deal and make a statement with your brows that you will be proud of. The unique non-sticky formula is comfortable to wear all day and can also be used as a clear mascara that defines, separates and enhances the natural curl of lashes.",
        category: "beauty",
        price: 5.99,
        quantity: 8
    )

    beauty6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty6.jpg')
    beauty6.picture.attach( io: beauty6Image, filename:'beauty6.jpg')
    
    beauty7 = Product.create(
        title: "Danessa Myricks Luxe Cream Palette - The Feminist", 
        bullet:[
            "12 LUSCIOUS SHADES: A selection of divine feminine colors celebrating awareness of the prettier side of life. Lift your spirits with 12 shades ranging from soft mauves, rich warms to decadent reds.",
            "WHAT IT DOES: Provides a soft, but buildable wash of color. Smooths the appearance of pores and fine lines.",
            "MULTI-FUNCTIONAL: This palette is designed for use on the eyes, lips and face. Sheer our for a flush of color on the eyelids and cheeks, or apply to the lips for pigment-packed color.",
            "VERSATILE COLOR: Every shade is designed to work with any skin tone. Easily create custom shades by mixing colors together.",
            "VEGAN & CRUELTY-FREE: This palette is formulated with the highest quality, natural ingredients derived from plants. No animal testing, ever!"
        ],
        description: "Danessa Myricks Luxe Cream \"The Feminist\" Palette is a highly pigmented, smoothing, multipurpose liquid color product with a satin/semi matte finish that can be used on the eyes, lips, and cheeks.",
        category: "beauty",
        price: 44.00,
        quantity: 21
    )

    beauty7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty7.jpg')
    beauty7.picture.attach( io: beauty7Image, filename:'beauty7.jpg')
    
    
    beauty8 = Product.create(
        title: "Maybelline Lifter Gloss Hydrating Lip Gloss with Hyaluronic Acid, Moon, 0.18 Ounce", 
        bullet:[
            "Lifter Gloss with Hyaluronic Acid: This lip gloss formula with Hyaluronic Acid visibly smoothes lip surface and enhances lip contour, drenching lips with high shine for hydrated, fuller looking lips",
            "Next Level Shine: This moisturizing gloss leaves lips feeling hydrated and looking smoother and fuller; It comes with an XL Wand to enhance lip contour with shine and transform lips in 1 swipe",
            "Let Your Lips Do the Talking: Find the perfect red lipstick and matching lip liner, collect each of our exclusive lip gloss shades, or treat your lips to lip balms that heal, protect, and beautify",
            "Create Any Look: Our foundations, bb creams, concealers and highlighters create a perfect canvas; Make eye looks with eyeshadows, brow pencils and eyeliners, and perfect your pout with lipsticks and lip balms",
            "Maybelline is the world’s number 1 makeup brand, from foundation to mascara to lipstick; Diverse, on the pulse, inspired by the city and tested on its streets"
        ],
        description: "Meet Maybelline New York New next level lip gloss. Drench lips with hydrating shine for a fuller, lifted look. This formula visibly smooths lip surface and enhances lip contour with high shine. Plus, its XL wand transforms lips in an easy, one swipe application. 90% agree lips feel hydrated. In a consumer test. This hydrating lip gloss is available in a full range of modern shades, like pearl, Ice, amber, Topaz, crystal and more. Formula with hyaluronic acid. Apply it for a hydrating, glossy shine and fuller look.",
        category: "beauty",
        price: 7.48,
        quantity: 23
    )

    beauty8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty8.jpg')
    beauty8.picture.attach( io: beauty8Image, filename:'beauty8.jpg')
    
    
    beauty9 = Product.create(
        title: "Wet n Wild High On Lash Eyelash Curler with Comfort Grip", 
        bullet:[
            "Rubberized Grip: This eyelash curler was designed with your comfort in mind. That's why it's fitted with cushion-soft grips that make it easy to use time and again",
            "Pinch-Free Curling: Long-looking curled lashes don't have to be a pain. This specially-made eyelash curler is designed to gently curl lashes without pinching the skin",
            "Curls in an Instant: Curl your lashes quickly and with minimal effort. This reliable eyelash curler provides lash perfection in a single step",
            "Universal Fit: Designed to work with any eye shape or size, this curler truly is one-size-fits-all",
            "Cruelty-Free: wet n wild products are never tested on animals and are always cruelty-free"
        ],
        description: "Your lash lift just got upgraded to first class with our High on Lash Eyelash Curler! Eyelash curlers are necessary to polish any eye look, but not all curlers are built the same. This easy-to-use eyelash curler gently and precisely grabs and lifts lashes for lasting curl without the common pains of snagging or tugging. Designed with versatility in mind, this tool is a perfect fit for any and all eye shapes, so no stragglers can delay the flight. The bouncy silicone pad provides a delicate and comfortable cushion, so your lashes can relax as we transport them directly to cloud nine. Get ready to takeoff on a luxurious journey with sky high lift and curl! wet n wild starts as everyone’s first and remains a lifelong destination for vibrant and accessible beauty. Delivering over 40 years of trend-forward and all-inclusive innovations, we are your trusted beauty expert that will keep you looking fabulous without ever betraying your budget. From the bold ‘n’ bright to the neutral ‘n’ nuanced, we set out to spoil you with options while setting the gold standard of achievability. So go ahead, get your feet wet with us again and go wild with your imagination",
        category: "beauty",
        price: 1.90,
        quantity: 82
    )

    beauty9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty9.jpg')
    beauty9.picture.attach( io: beauty9Image, filename:'beauty9.jpg')
    
    
    beauty10 = Product.create(
        title: "WESTMAN ATELIER Baby Cheeks Blush Stick (Poppet)", 
        bullet:[
            "A multi-purpose cream blush stick that can also be used on lips and eyes.",
            "Good for all skin types including dry, mature, sensitive, blemish-prone, combination and normal.",
            "Formulated with a triple botanical blend of ayurvedic oils, this creamy color melts into skin and helps to nourish and balance moisture.",
            "Additionally vitis vita grape extract helps to detoxify cells while promoting your own natural collagen and hyaluronic acid production. Infuse skin with a natural flush of buildable color.",
            "Shade: Poppet - Poppy Pink."
        ],
        description: "HOW TO USE: Dab baby cheeks onto fingers and begin applying to the middle of your cheekbone. Work around in an oval motion, blending outward as you go. Pop onto lips for extra fullness and juiciness. For a more refined application, use the baby blender to blend baby cheeks into the skin by using small circles or tiny buffing strokes.",
        category: "beauty",
        price: 48.00,
        quantity: 1
    )
    
    beauty10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty10.jpg')
    beauty10.picture.attach( io: beauty10Image, filename:'beauty10.jpg')
    

    beauty11 = Product.create(
        title: "Aquaphor Healing Ointment Advanced Therapy Skin Protectant, Dry Skin Body Moisturizer, 7 Oz Tube", 
        bullet:[
            "One Essential Solution: Aquaphor is one essential solution for many skin care needs; use on dry, cracked skin, as a lip moisturizer, facial moisturizer, hydrating mask, minor wound care and much more",
            "For Dry, Compromised Skin: This Aquaphor Healing Ointment is designed specifically for dry, compromised skin and clinically proven to restore smooth, healthy skin",
            "Convenient Replacement: Use Aquaphor Healing Ointment as a replacement for a foot cream or hand cream to help heal dry cracked hands, cuticles and feet",
            "Ideal for Healing: Different from a body lotion or cream, this ointment is water-free, and soothes skin while creating a protective barrier that allows for the flow of oxygen to create an ideal healing environment",
            "Includes one (1) 7 ounce tube of Aquaphor Healing Ointment Advanced Therapy Skin Protectant"
        ],
        description: "Aquaphor Healing Ointment Advanced Therapy Skin Protectant is a multi-purpose solution for many skincare needs. This body moisturizer ointment is ideal for dry, compromised skin and is clinically proven to restore smooth, healthy looking skin. Aquaphor is the #1 dermatologist recommended brand for dry, cracked skin and minor wound care (1), and this dry skin ointment soothes and helps protect skin to enhance healing from skin irritations such as minor cuts and burns, cracked cuticles and dry feet, heels, hands and lips. Aquaphor Healing Ointment can also help prevent chafing and protect skin from drying effects of wind and cold weather. This skin ointment creates a protective barrier on the skin that also allows for the flow of oxygen and excess fluid to create an ideal healing environment. This unique ointment is formulated with Petrolatum (skin protectant) plus Provitamin B5, Bisabolol, Glycerin and Lanolin Alcohol to protect, soothe and moisturize skin so you can get on with your day comfortably. Each of the ingredients in Aquaphor skin care products are tested and approved for their quality and safety, and suitability for dry, compromised skin. (1) ProVoice survey, January 2017.",
        category: "beauty",
        price: 9.58,
        quantity: 0
    )

    beauty11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty11.jpg')
    beauty11.picture.attach( io: beauty11Image, filename:'beauty11.jpg')
    
    beauty12 = Product.create(
        title: "Burt's Bees Sensitive Facial Cleansing Towelettes with Cotton Extract for Sensitive Skin - 30 Count (Pack of 3)", 
        bullet:[
            "FACE WIPES: Revitalize and rejuvenate your skin with the gentle cleansing of Burt's Bees Facial Cleansing Towelettes",
            "FACIAL CLEANSER: Formulated with cotton, rice extracts and aloe, these sensitve skin face wipes will leave your skin feeling soft and clean",
            "MAKEUP REMOVER WIPES: Dermatologist and Ophthalmologist tested, these facial wipes gently cleanse and tone your skin while removing pore-clogging dirt, oil, and make up",
            "SENSITIVE SKIN CARE: Specially crafted for sensitive skin, these 99.1% natural facial cleansing wipes are fragrance free, hypoallergenic, allergy tested and Awarded National Eczema Association Seal of Acceptance",
            "ONE STEP CLEANSER: Pamper your skin in one easy step with rinse-free, disposable Burt's Bees facial cleansing wipes in a package with a convenient resealable closure"
        ],
        description: "Leave your face feeling clean and moisturized with the greatest of ease with Burt's Bees Sensitive Facial Cleansing Towelettes. These cleansing cloths are gentle on sensitive skin and removes makeup quickly and easily without rinsing. Specifically formulated for sensitive skin, these 99.1% natural wipes are formulated with cotton extract, rice extract and aloe known for their skin soothing and moisturizing properties. Gently wipe your face with towelette to remove dirt, oil and make-up. It's fragrance-free, hypoallergenic, allergy-tested and dermatologist-tested. Plus, it's FSC certified cloth and Awarded National Eczema Association Seal of Acceptance. Use them as part of the Burt's Bees Sensitive skin care regimen. Give your skin the best nature has to offer with Burt's Bees.",
        category: "beauty",
        price: 14.97,
        quantity: 8
    )

    beauty12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/beauty/beauty12.jpg')
    beauty12.picture.attach( io: beauty12Image, filename:'beauty12.jpg')
    
    
    #  Sports
    sports1 = Product.create(
        title: "Yes4All Sandbags - Heavy Duty Sandbags for Fitness, Conditioning, Crossfit - Multiple Colors & Sizes", 
        bullet:[
            "REAP A MULTITUDE OF BODY STRENGTHENING BENEFITS: By having to control the changing center of mass constantly, training with sandbags helps condition and build stability, strength, and performance in other sports",
            "MULTI-FUNCTION TRAINING GEAR: Employ the sandbags to engage your core and target multiple muscle groups in numerous exercises: Lunges, Deadlift, Squat, Burpee, Snatch, Spider, Overhead press, Hammer curl and many more",
            "JUST THE RIGHT SANDBAG: Yes4All Sandbags come in a variety of colors and capacities so you can choose the exact bag for your level of fitness and training goals: S (5-25 lbs), M (25-75 lbs), L (50-125 lbs) & XL (125-200 lbs)",
            "THOUGHTFUL AND ENHANCED DESIGN: Made of 1000 Denier (1000D) Coated CORDURA Nylon Fabric, strong stitching and zipper closure to ensure durability and performance. Strategically placed handles offer opportunities for various workout moves",
            "FULL PRODUCT SET INCLUDES: S – 1 small inner bag (5-25 lbs), M – 1 small and 1 big inner bag (25-75 lbs), L – 3 big inner bags (50-125 lbs) and XL – 4 big inner bags (125-200 lbs)"
        ],
        description: "Sandbags with their ever-shifting sand inside can be your next best trick! By battling and stabilizing the shifting sand throughout various movements, known as dynamic resistance, you can expect to get a plethora of fitness benefits. Training with sandbags can also help increase the utilization of core muscles, strengthen torso and hips, which always help in both your daily life and athletic performance. Using sandbags can help you learn to brace and stabilize when lifting and moving odd objects, which will transfer into daily life where most things lifted are not advantageous to lifting like in gym environments. With Yes4All Sandbags, choosing the perfect bag for your fitness level and training goals has never been simpler. Made of 1000 Denier (1000D) Coated CORDURA Nylon Fabric, strong stitching especially X-shaped stitches at core points and zipper closure to ensure durability and performance. Further equipped with strategically placed comfortable handles, our sandbags offer greater opportunities for even more various workout moves be it Lunges, Deadlift, Squat, Burpee, Snatch, Spider, Overhead press, Hammer curl, Crossfit and many more.",
        category: "sports",
        price: 49.88,
        quantity: 9
    )

    sports1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports1.jpg')
    sports1.picture.attach( io: sports1Image, filename:'sports1.jpg')
    
    
    sports2 = Product.create(
        title: "XTERRA Fitness TR150 Folding Treadmill", 
        bullet:[
            "Large 16\" x 50\" walking/running surface accommodates users of many sizes and stride lengths",
            "Intuitive 5' LCD display is easy to read and keeps you updated on speed, incline, time, distance, calories and pulse",
            "12 preset programs and 3 manual incline settings offer unmatched variety for your workouts",
            "Easy pull knob releases the deck to fold or unfold for convenient storage when not in use"
        ],
        description: "The XTERRA Fitness TR150 Treadmill combines the quality and performance you desire with the flexibility of a machine that can be easily folded and stored away. The heart pounding speed range up to 10 mph and 3 manual incline settings are powered by a smooth and quiet 2.25 HP motor. 12 preset programs offer unmatched variety, while the 16\" x 50\" XTRASoft cushioned deck provides maximum impact absorption. Hand grip pulse sensors are conveniently mounted on the side handlebars to help keep you in your training zone. A large 5\" LCD provides you with important workout feedback while the direct touch speed buttons provide quick access of your favorite speeds – great for interval training! The integrated bookrack and accessory holders keep your reading material, remote control, and anything else you want close by, right where you need it. When your workout is complete simply fold your treadmill and store out of the way using the built-in transport wheels.",
        category: "sports",
        price: 367.63,
        quantity: 0
    )

    sports2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports2.jpg')
    sports2.picture.attach( io: sports2Image, filename:'sports2.jpg')
    
    sports3 = Product.create(
        title: "Fitbit Versa 2 Health and Fitness Smartwatch with Heart Rate, Music, Alexa Built-In, Sleep and Swim Tracking, Stone/Mist Grey, One Size (S and L Bands Included)", 
        bullet:[
            "Receive a Daily Readiness Score that reveals if you’re ready to exercise or should focus on recovery (requires Fitbit Premium membership. Premium content recommendations are not available in all locales and may be in English only)",
            "Run, bike, hike and more phone-free—and see your real-time pace & distance—with built-in GPS. Then check out your workout intensity map in the Fitbit app",
            "Active Zone Minutes uses your resting heart rate to gauge exercise effort and gives you a buzz when you step up the intensity so you can make the most of your workouts. Fitbit Versa 3 is water resistant to 50 meters",
            "Better track heart rate 24/7 with PurePulse 2.0, Fitbit’s enhanced heart rate technologyUse Google Assistant or Amazon Alexa Built-in to get quick news, set bedtime reminders and alarms, control your smart home devices and more just by speaking to your watch",
            "6-month Fitbit Premium trial for new Premium users (Valid payment method required. Cancel before free trial ends to avoid subscription fees. New Premium users only. Content and features may vary by language and are subject to change.)",
            "Get 6+ days of battery on a full charge plus one day of battery in just 12 minutes with fast charging (Battery life varies with use and other factors; up to 12 hours with continuous GPS)",
            "Track your time in light, deep and REM sleep, then receive your Sleep Score to better understand your sleep quality each night",
            "Store and play music & podcasts on Deezer or Pandora, plus control Spotify—all from your wrist. Subscriptions required for use of music services; not available in all countries"
        ],
        description: "Meet Fitbit Versa 2™—a smartwatch that elevates every moment. Use your voice to create alarms, set bedtime reminders, check the weather or start an exercise with Amazon Alexa Built-in, plus see the time or your stats at a glance with always-on display mode.* Take your look from the gym to the office with its modern and versatile design. Play your favorite music and podcasts with Spotify.** Plus get Fitbit Pay™, a daily Sleep Score, notifications and 24/7 heart rate for an experience that revolves around you.",
        category: "sports",
        price: 120.24,
        quantity: 0
    )

    sports3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports3.jpg')
    sports3.picture.attach( io: sports3Image, filename:'sports3.jpg')
    
    sports4 = Product.create(
        title: "Amazon Basics 1/2-Inch Extra Thick Exercise Yoga Mat", 
        bullet:[
            "100% NBR foam",
            "Imported",
            "Extra thick mat for yoga, gym, and everyday exercise",
            "Textured foam construction provides traction and stability",
            "1/2 inch thick mat provides extra support, shock-absorption, and comfort\".\"Elastic straps secure rolled-up mat; includes shoulder strap for easy carrying",
            "Please check the mat will not slip on the floor before using",
            "Dimensions: 74 x 24 x .5 inches"
        ],
        description: "Amazon Basics 1/2-Inch Extra Thick Exercise Yoga Mat From the Manufacturer Amazon Basics",
        category: "sports",
        price: 17.97,
        quantity: 0
    )

    sports4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports4.jpg')
    sports4.picture.attach( io: sports4Image, filename:'sports4.jpg')
    
    sports5 = Product.create(
        title: "Speedo Unisex-Adult Swim Cap Silicone", 
        bullet:[
            "Protect your hair from chlorine with this durable swim cap made from pliable silicone and designed to fit comfortably without any snagging or pulling.",
            "Superior, soft texture",
            "Excellent stretch, pliability, and durability",
            "Does not pull hair when removing or putting on cap",
            "Latex free"
        ],
        description: "Express your individuality with a printed swim cap. Lightweight silicone construction provides durability and a comfortable fit, while colorful options allow your personality to shine through at the pool. Protect your hair from chlorine with this durable swim cap made from pliable silicone and designed to fit comfortably without any snagging or pulling.",
        category: "sports",
        price: 12.00,
        quantity: 7
    )

    sports5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports5.jpg')
    sports5.picture.attach( io: sports5Image, filename:'sports5.jpg')
    
    sports6 = Product.create(
        title: "Easton TYPHOON USA Baseball Bat | -12 | 1 Pc. Aluminum | 2 1/4 Barrel", 
        bullet:[
            "GREAT POWER AND CONTACT FOR YOUNG PLAYERS: This bat is designed for the youth player with a -12 drop weight and 2 1/4 in.",
            "DURABLE AND STRONG: Constructed of ALX50 Military-Grade Alloy for a traditional one-piece feel that provides a stiffer feel on contact while maximizing power",
            "ENLARGED SWEET SPOT: The Typhoon youth baseball bat is easy to swing and improves the chances of a powerful hit.",
            "CERTIFIED BY THE BEST: Certified for play in all USA baseball leagues",
            "THE GUARDIAN 6-MONTH EXTENDED WARRANTY: You expect nothing but the best, and we’re here to make it happen. That’s why we add an EXTRA sixth months onto the manufacturer's warranty for all baseball gear."
        ],
        description: "EASTON QUALITY – LEADING BASEBALL INNOVATION FOR A REASON: Easton Baseball is constantly pushing the envelope when it comes to baseball gear, and that’s just one reason baseball and softball players around the world turn to Easton when they’re looking to get the most out of their game. FEATURES OF THIS BAT: The Easton Typhoon USA Youth Baseball Bat Drop -12 2 1/4 Barrel has been carefully designed to help you get the most out of every at-bat by blending power, comfort, and science for maximum performance. Features include: ● Engineered for excellence by the Easton team ● A stiff feel and good control. ● The perfect blend of speed and power. ● The Guardian 6-Month Extended Warranty: An extra six months added to the manufacturer’s warranty because your happiness is our #1 priority.",
        category: "sports",
        price: 69.99,
        quantity: 2
    )

    sports6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports6.jpg')
    sports6.picture.attach( io: sports6Image, filename:'sports6.jpg')
    
    sports7 = Product.create(
        title: "Spalding Street Outdoor Basketball 28.5\"", 
        bullet:[
            "Intermediate size and weight: Size 6, 28.5\"",
            "Performance outdoor rubber cover",
            "Deep channel design for superior control",
            "Designed for outdoor play",
            "Ships Deflated"
        ],
        description: "Street ball will never die. Built for summer tournaments and Saturdays at the park, the Spalding Street outdoor basketball holds to the official size and weight. It has a deep channel design to give you proper grip and a durable rubber cover that stands up to asphalt or concrete.",
        category: "sports",
        price: 19.81,
        quantity: 8
    )

    sports7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports7.jpg')
    sports7.picture.attach( io: sports7Image, filename:'sports7.jpg')
    
    sports8 = Product.create(
        title: "adidas Women's Saturday Relaxed Adjustable Cap", 
        bullet:[
            "100% Cotton",
            "Imported",
            "Hand Wash Only",
            "Hand Wash Only",
            "6-panel, relaxed traditional silhouette.",
        ],
        description: "The cap every athlete needs in her closet. Simple and classic, the saturday cap is the perfect accessory to throw on for a long run or coffee run. Designed with a lightweight, washed cotton twill, embroidered centerfront adidas logo, and adjustable matte silver slider. Bad hair days never looked so good.",
        category: "sports",
        price: 12,
        quantity: 7
    )

    sports8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports8.jpg')
    sports8.picture.attach( io: sports8Image, filename:'sports8.jpg')
    
    sports9 = Product.create(
        title: "Bosu Balance Trainer, 65cm \"The Original\"", 
        bullet:[
            "PROVEN: BOSU Balance Trainer provides cardio, muscular strength, flexibility and endurance training in unique, challenging and highly effective workouts. Downloadable workouts are developed by industry professionals to improve overall fitness and health",
            "IMPROVE YOUR HEALTH: Challenging and fun, the BOSU Balance Trainer gives a whole new meaning to \"moving with control\" as you work out on an unstable, dynamic surface",
            "INCLUDED: BOSU Balance Trainer, Downloadable Owner's manual, and hand pump",
            "BUILT TO LAST: The BOSU Balance Trainer has been tested to last 10x the leading generic balance trainer. Maximum User Weight: 300 lbs"
        ],
        description: "The BOSU Balance Trainer gives you a fast, fun workout that fits into the busiest lifestyle. It’s designed to provide cardio, muscular strength, flexibility and endurance training with just one device. And while the BOSU is an easy-to-use piece of exercise equipment, it’s impossible to master and continues to challenge as strength and endurance improves. BOSU is the original balance trainer introduced 20 years ago and is made in the US. Since it’s introduction in 1999, BOSU is still the balance trainer of choice by fitness trainers, physical therapists, fitness clubs and professional sports teams. They trust the BOSU brand and know that it’s made with quality materials and superior workmanship. The BOSU Balance Trainer is tested to last 10 times longer than the leading generic balance trainer. And, if there is problem with the BOSU, our US-based customer support team is happy to help resolve issues. To ensure you get the original BOSU look for the BOSU logo on every BOSU Balance Trainer.",
        category: "sports",
        price: 152.99,
        quantity: 9
    )

    sports9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports9.jpg')
    sports9.picture.attach( io: sports9Image, filename:'sports9.jpg')
    
    sports10 = Product.create(
        title: "Mizuno T10 Plus Kneepad", 
        bullet:[
            "New slimmer design",
            "Embroider Mizuno Run bird logo",
            "Enhanced foam to protect you where you needed It",
            "No fold design",
            "One Size fits most"
        ],
        description: "Mizuno's T10 Plus now features a slimmer design. Embroided Mizuno Run bird logo. Enhanced foam to protect you where you need it. One size fits most.",
        category: "sports",
        price: 19.95,
        quantity: 5
    )

    sports10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports10.jpg')
    sports10.picture.attach( io: sports10Image, filename:'sports10.jpg')
    
    sports11 = Product.create(
        title: "adidas Defender 4 Medium Duffel Bag, Team Power Red, One Size", 
        bullet:[
            "Lifetime warranty.",
            "Water resistant base material.",
            "Extra roomy main compartment that stands tall for easy packing.",
            "2 zippered end pockets with space for your team's branding and a zippered outside pocket to stash the little stuff.",
            "Durable material - built to stand up to wear and tear."
        ],
        description: "Move from the street to the gym with a modern look. this newly updated duffel bag features a water-resistant base for all-day durability while you're on the go. zip end pockets and a small front pocket give you easy access to your personal essentials.",
        category: "sports",
        price: 40,
        quantity: 2
    )

    sports11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports11.jpg')
    sports11.picture.attach( io: sports11Image, filename:'sports11.jpg')
    
    sports12 = Product.create(
        title: "ND21 Noodle Soft 15bp", 
        bullet:[
            "Durable and soft sheer cover",
            "Impact propulsion core for longer carry",
            "Great feel and increased spin around the greens",
            "Patented dimple design for straighter flight"
        ],
        description: "Get distance and soft feel with Noodle Long & Soft. Featuring 342 aerodynamic dimples that help cut air resistance for a longer carry and an ultra-soft 34 compression core, golfers will experience distance and feel when they need it most.",
        category: "sports",
        price: 14.99,
        quantity: 3
    )

    sports12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/sports/sports12.jpg')
    sports12.picture.attach( io: sports12Image, filename:'sports12.jpg')
    
    
    # pet supplies
    pets1 = Product.create(
        title: "Vet’s Best Enzymatic Dog Toothpaste | Teeth Cleaning and Fresh Breath Dental Care Gel | Vet Formulated", 
        bullet:[
            "SOOTHING AND EFFECTIVE - Vet’s Best Enzymatic Dental Gel Toothpaste is a veterinarian formulated soothing and effective mix of aloe, neem oil, grapefruit seed extract, baking soda, and enzymes",
            "CLEANS AND FRESHENS - Freshens breath and gently cleans away plaque and tartar",
            "PART OF A HEALTHY REGIMEN - Supports your dog’s dental hygiene between annual cleanings at your vet’s office",
            "NATURAL FLAVORS - Your dog will love the great taste. You will love how it brightens and whitens teeth while freshening the breath",
            "SAME FORMULA, NEW PACKAGE - The same great Vet’s Best dental gel is now available in an easy to use squeeze tube"
        ],
        description: "Provide the best dental care for your dog with Vet's Best Complete Enzymatic Dental Care Gel & Toothbrush Kit. Our veterinarian-formulated toothpaste contains enzymes and natural ingredients (including neem oil, grapefruit seed extract, baking soda, and aloe) that gently clean away plaque and tartar while freshening your dog’s breath. The kit includes our triple-headed toothbrush, which makes brushing quick and convenient. Three bristle heads are positioned to form around each tooth, efficiently cleaning from every angle simultaneously.",
        category: "pets",
        price: 8.99,
        quantity: 2
    )
  
    pets1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets1.jpg')
    pets1.picture.attach( io: pets1Image, filename:'pets1.jpg')
    
    pets2 = Product.create(
        title: "ChomChom Pet Hair Remover - Reusable Cat and Dog Hair Remover for Furniture, Couch, Carpet, Car Seats and Bedding - Eco-Friendly, Portable, Multi-Surface Lint Roller & Animal Fur Removal Tool", 
        bullet:[
            "VERSATILE - Keep your home free from loose lint and hair. The ChomChom lint roller for pet hair removal works like a charm on furniture, upholstery, blankets, and other items riddled with fur.",
            "REUSABLE - If ripping off hundreds of lint roller sheets is a pet peeve of yours when cleaning, give our pet hair removal tool a go. It doesn't require sticky tape, so you can use it again and again.",
            "CONVENIENT - No batteries or power source needed for this dog and cat hair remover. Just roll this lint remover tool back and forth to trap fur and lint into the receptacle.",
            "EASY TO CLEAN - Upon picking up loose pet hair, simply press down on the release button to open and empty out the fur remover's waste compartment.",
            "SATISFACTION - Should you have questions or concerns about this pet hair remover for laundry and beyond, our team is available 24/7 to help. We want you to be dog-gone happy with your purchase!"
        ],
        description: "The ChomChom Roller is the World’s Best Pet Hair Remover. By simply moving the pet hair roller back and forth, you immediately track and pick up cat hairs and dog hairs embedded deeply in sofas, couches, beds, carpets, blankets, comforters and more. You have probably tried all types of pet hair and lint removal products… from sticky roller tapes, to products that cannot be used over and over again. With the World’s Best Pet Hair Remover, you'll never need another gadget! No adhesive or sticky tape, 100% reusable, no power source required, clean and convenient pet hair remover. They make great gifts!",
        category: "pets",
        price: 24.95,
        quantity: 21
    )

    pets2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets2.jpg')
    pets2.picture.attach( io: pets2Image, filename:'pets2.jpg')
    
    pets3 = Product.create(
        title: "Purina FortiFlora Probiotics for Dogs, Pro Plan Veterinary Supplements Powder Probiotic Dog Supplement – 30 ct. box", 
        bullet:[
            "One (1) 30-Count Box - Purina Pro Plan Veterinary Diets Probiotics Dog Supplement, Fortiflora Canine Nutritional Supplement",
            "Probiotic recommended by veterinarians (Kynetec, Probiotic Recommendation Study, March 2019)",
            "A Probiotic supplement for the dietary management of puppies and adult dogs with diarrhea",
            "Contains a probiotic to promote normal intestinal microflora. Helps reduce flatulence",
            "Proprietary microencapsulation process for enhanced stability"
        ],
        description: "Provide specialized support for your dog with Purina Pro Plan Veterinary Diets FortiFlora Canine Probiotic Supplement. Formulated for the dietary management of dogs with diarrhea, this safe and effective probiotic dog supplement is simple to administer by adding the powder to your dog’s regular food. When fed with your dog’s food, FortiFlora may help support your dog’s digestive health. Each packet contains a guaranteed level of live microorganisms that help promote beneficial intestinal microflora. Our proprietary microencapsulation process helps enhance the stability and survival of the microorganisms until they reach your dog’s intestinal tract, so your dog gets the maximum benefits from each serving. This formula contains Antioxidants and also supports your dog’s immune health. FortiFlora for dogs also helps reduce gas in dogs and supports your dog’s digestive health. Appropriate for administration to both puppies and adult dogs, FortiFlora Canine Probiotic Supplement should be used as directed by your dog’s veterinarian.",
        category: "pets",
        price: 30.99,
        quantity: 98
    )

    pets3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets3.jpg')
    pets3.picture.attach( io: pets3Image, filename:'pets3.jpg')
    
    pets4 = Product.create(
        title: "Good'N'Fun Triple Flavored Rawhide Kabobs for Dogs", 
        bullet:[
            "A Savory Combination Of Five Flavors That Dogs Love Most",
            "Treats Made From Rawhide And Pork Hide, Then Wrapped With Real Chicken, Duck And Chicken Liver",
            "Natural Chewing Action Helps Reduce Tartar Buildup",
            "Great Source Of Protein",
            "Satisfy Your Dog'S Natural Urge To Chew"
        ],
        description: "Good ‘n’ Fun brand offers a tasty smorgasbord of flavors that dogs love. These delicious chews are made from the finest ingredients, including real beef hide and real chicken, to create truly delightful, long-lasting treats your dog will love. Tails will be wagging for flavor-packed Good ‘n’ Fun Triple Flavor Kabobs, made with a savory combination of five flavors that dogs love most. These delicious chew treats are made from the finest rawhide and pork hide, then wrapped with real, savory chicken, wholesome duck and hearty chicken liver flavor to create a truly delightful, long-lasting rawhide treat your dog will love. A great source of protein, Good ‘n’ Fun Triple Flavor Kabobs are a healthy and delicious way to satisfy your dog’s natural urge to chew. The natural action of chewing also helps reduce tartar buildup and remove plaque. Give your dog one Good ‘n’ Fun Triple Flavor Kabob rawhide chew per day. For supervised consumption only. Select a chew slightly larger than your pet’s mouth. Discard chunks or fragments. Always provide plenty of fresh drinking water and visit your veterinarian regularly.One a day. Select a chew slightly larger than your dog's mouth. Supervise consumption. Feed as treat or reward once a day. Discard any chunks or fragments. Always provide plenty of clean fresh drinking water and visit your veterinarian regularly. Wash your hands thoroughly after handling treats.",
        category: "pets",
        price: 14.98,
        quantity: 21
    )

    pets4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets4.jpg')
    pets4.picture.attach( io: pets4Image, filename:'pets4.jpg')
    
    pets5 = Product.create(
        title: "Milk-Bone MaroSnacks Dog Treats with Real Bone Marrow and Calcium", 
        bullet:[
            "Contains one (1) 40 ounce package of small dog treats with real bone marrow (packaging may vary)",
            "The dog biscuit shell encases a real bone marrow center, delicious treats that you can feel good about giving",
            "Crunchy on the outside and meaty on the inside, our MaroSnacks dog snacks are a satisfying combo of texture and mouthwatering flavor",
            "Savory treats with calcium, perfect for dogs of all sizes",
            "Baked with love in Buffalo, New York, USA, with colors from natural ingredients only"
        ],
        description: "Tap into your dog’s canine heritage and treat them to a few of these savory, crunchy dog treats. They′re dog biscuits, but with a tasty bonus: The biscuit shell encases a real bone marrow center. So they′re crunchy on the outside and meaty on the inside — a mouthwatering, satisfying flavor and texture combo. You′ll also be glad to know that they′re made with calcium and use only natural ingredients as sources of color. In short, Milk-Bone MaroSnacks dog snacks are delicious treats you can feel good about giving. Order now to give your dog the simple, genuine joy that your dog gives you every day.",
        category: "pets",
        price: 11.48,
        quantity: 9
    )

    pets5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets5.jpg')
    pets5.picture.attach( io: pets5Image, filename:'pets5.jpg')
    
    pets6 = Product.create(
        title: "Pedigree DENTASTIX Treats for Large Dogs, 30+ lbs. Multiple Flavors", 
        bullet:[
            "Contains one (1) 2.73 lb 51-count pack of Pedigree dentastix Large Treats for Dogs Variety Pack which contains three pouches: (1) 15.6 oz Original (18 Treats); (1) 13 oz Fresh (15 Treats); (1) 15.6 oz Beef Flavor (18 Treats)",
            "PEDIGREE DENTASTIX: Triple Action acts as a dog breath freshener that works to clean teeth and freshen breath, and has a clinically proven texture that reduces plaque and tartar buildup",
            "Our dental treat sticks have a unique X-shape design and are specially designed for adult large breed dogs, weighing over 30 lbs.",
            "Feed 1 Pedigree Dentastix Oral Care Treat every day for maximum benefits to oral hygiene",
            "Pedigree dentastix Dental Chews feature an original flavor with real chicken, fresh mint flavor, and beef flavored dental treats that large dogs love"
        ],
        description: "DENTASTIX Original, Beef, & Fresh Treats for dogs are the delicious oral care treat that your dog will love to eat... and you’ll love to treat. The chewy texture and unique X-shape design in these healthy dog treats is clinically proven to reduce plaque and tartar buildup, so treat time is part of a healthy dental care routine that helps promote canine oral health too!",
        category: "pets",
        price: 19.42,
        quantity: 76
    )

    pets6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets6.jpg')
    pets6.picture.attach( io: pets6Image, filename:'pets6.jpg')
    
    pets7 = Product.create(
        title: "Greenies Original Petite Natural Dental Dog Treats (15 - 25 lb. dogs)", 
        bullet:[
            "Contains one (1) 36 oz 60-count pack of Greenies Original Petite Natural Dental Dog Treats; Natural Dog Treats Plus Vitamins, Minerals and Other Nutrients",
            "The unique texture of Greenies Dog Chews cleans down to the gumline to fight plaque and tartar and freshen bad dog breath",
            "Greenies Treats for Dogs are veterinarian recommended and VOHC accepted (Veterinary Oral Health Council)",
            "Treat your small dog fantastically with the great taste of Greenies Original Dental Treats",
            "Greenies Dog Treats are made with natural, easy-to-digest ingredients and are nutritionally complete"
        ],
        description: "One Greenies Original Dental Treat a day is all it takes for clean teeth, fresh breath, and a happy dog. Your dog can't wait to sink their teeth into these delicious, original-flavor dental dog breath chews because they feature a delightfully chewy texture that fights plaque and tartar. Irresistibly tasty and incredibly powerful, Greenies Treats for Dogs are vet-recommended for at-home oral health care. Best of all, these natural dog breath treats are made with highly soluble ingredients that are safe and easy to digest. Give your dog the mouth-wowing treat that helps promote their overall health with Greenies Dog Treats. Great for small breeds and little dogs between 15 and 25 lbs. Natural Dog Treats Plus Vitamins, Minerals, and Other Nutrients.",
        category: "pets",
        price: 33.98,
        quantity: 2
    )

    pets7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets7.jpg')
    pets7.picture.attach( io: pets7Image, filename:'pets7.jpg')
    
    pets8 = Product.create(
        title: "FRONTLINE Plus Flea and Tick Treatment for Dogs (Large Dog, 45-88 Pounds)", 
        bullet:[
            "The #1 name in flea & tick protection trusted by pet owners for over 20 years, this waterproof, fast-acting flea and tick treatment kills fleas, flea eggs, lice, and ticks, including those that may transmit Lyme disease.",
            "Designed for use only with dogs and puppies, this long-lasting treatment is made for dogs eight weeks or older.",
            "Made with two active ingredients, fipronil and (S)-methoprene, this treatment stops infestations and prevents new ones.",
            "Applied on a single point on your pet, the treatment rapidly covers your dog's entire body and deposits in the sebaceous glands. These glands as a reservoir, continuously replenishing the treatment onto your pet, working even if your dog gets wet.",
            "One dose of FRONTLINE Plus lasts 30 days."
        ],
        description: "FRONTLINE Plus for Dogs has been trusted by veterinarians for flea and tick control for dogs for nearly 20 years. Made with 2 tough killing ingredients, fipronil and (S)-methoprene – one to kill adult fleas and ticks and the second to kill flea eggs and larvae – this fast-acting, long-lasting protection provides flea and tick control for dogs and puppies 8 weeks and older, 45-88 lbs. Its long-lasting formula is stored in the oil glands of the pet’s skin to give non-stop flea and tick protection for a full 30 days.",
        category: "pets",
        price: 38.99,
        quantity: 0
    )

    pets8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets8.jpg')
    pets8.picture.attach( io: pets8Image, filename:'pets8.jpg')
    
    pets9 = Product.create(
        title: "GREENIES Pill Pockets Natural Dog Treats, Capsule Size, Hickory Smoke Flavor", 
        bullet:[
            "Contains one (1) 15.8 ounce 60-count value pack of Greenies Pill Pockets Capsule Size Dog Treats Hickory Smoke Flavor; Made with a Natural ingredients plus trace nutrients",
            "Greenies Pill Pockets are the tasty, smarter way to help your dog’s medicine go down at treatment time—without trying to hide pills in human food like messy peanut butter or cheese",
            "Your dog won’t be able to sniff out the medicine: Pill Pockets mask the smell and taste, and come in an irresistible hickory smoke flavor for a stress- and mess-free experience for you both",
            "These Pill Pockets Dog Treats are a cinch to use: Drop the medicine tablet inside the pill pouch, pinch it closed, and give your best friend a tasty snack",
            "When it comes to MEDs, pets are smart—but you’re smarter: Greenies Pill Pockets are a vet-recommended medicating treat hack you and your dog will love"
        ],
        description: "PILL POCKETS TURN PILL TIME INTO TREAT TIME. GREENIES Pill Pockets Treats for Dogs make it easy to give your dog medicine, with a tasty hickory smoke flavor they’re sure to love. Why hide your pet’s medicine in human foods like peanut butter or cheese when you can give them a healthy all natural dog treat, made with natural, real ingredients plus trace nutrients instead? Designed by veterinarians, GREENIES Pill Pockets Dog Treats mask the smell and taste of any medicine, taking the stress (and mess) out of giving your canine companion medicine. Whether for large breed or small dogs, these smaller-sized Pill Pockets for tablets make taking medicine a positive experience for your dog. And they’re easy to give: Simply drop a tablet into the Pill Pockets pouch, pinch the top half closed, give it to your pup, and poof: Watch their medicine disappear. GREENIES Pill Pockets are the ingenious way to give your dog their meds—and they’ll never know the difference.* Data on file at Mars Petcare US, Inc. 2018",
        category: "pets",
        price: 14.98,
        quantity: 0
    )

    pets9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets9.jpg')
    pets9.picture.attach( io: pets9Image, filename:'pets9.jpg')
    
    pets10 = Product.create(
        title: "Nina Ottosson by Outward Hound Dog Treat Puzzle", 
        bullet:[
            "BOREDOM BUSTER INTERACTIVE DOG TOY: As one of our most popular intermediate level 2 designs, the Dog Brick interactive puzzle includes additional obstacles and combinations of steps that will keep your dog focused and mentally-stimulated as they search and sniff out the tasty treats!",
            "FLIP, LIFT, & SLIDE TO HIDE TREATS: The Nina Ottosson Dog Brick comes with 3 types of treat hiding compartments to test your furry' friends skills! Flip lid compartments open and slide to reveal two separate treat hiding spots while removable brick bones conceal the third hidden compartments in this puzzle dog toy.",
            "ENCOURAGES POSITIVE PLAY HABITS: This fun and rewarding puzzle is great for reducing anxious dog behavior and redirecting destructive behavior.",
            "BPA, PVC & PHTHALATE-FREE: Nina Ottosson by Outward Hound interactive treat dog puzzles are designed with your pet's health in mind from food safe materials that you can trust with your dog. Easy to clean with warm water and soap between uses.",
            "PLAY IT SAFE: No toy is indestructible. Do not leave toys with unsupervised pets. Remove and replace toy if damaged."
        ],
        description: "The Nina Ottosson by Outward Hound Dog Brick level 2 puzzle dog game will keep your dog entertained for hours as they use their natural hunting skills to seek out the hidden treats! This toy comes with 3 easy-to-fill compartments to hide your dog's favorite treats and snacks in. Flip lid compartments open up to reveal the first compartment and can also slides to reveal a hidden second compartment underneath. White, hollow brick-style bones hide the third compartment and can be easily lifted out to place yummy treats! This puzzle is ideal for pups who have already mastered level 1 of the Nina Ottosson puzzle line and are ready to take it up a notch! Made from tough removable plastic parts and food safe materials that are BPA, PVC, and phthalate-free. Hand Wash with soap and water to clean. SAFETY AND CARE: ALWAYS SUPERVISE your dog closely, teach your dog how the game works. Do not leave your dog alone with a treat puzzle, do not let your dog chew on the game or pieces. Inspect for damage and remove if broken. For dogs only, not a children’s toy. When empty, store until next supervised use.",
        category: "pets",
        price: 14.95,
        quantity: 22
    )

    pets10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets10.jpg')
    pets10.picture.attach( io: pets10Image, filename:'pets10.jpg')
    
    pets11 = Product.create(
        title: "Purina Beneful IncrediBites Adult Wet Dog Food Variety Pack", 
        bullet:[
            "Thirty (30) 3 oz. Cans - Purina Beneful Small Breed Wet Dog Food Variety Pack, IncrediBites With Real Beef, Chicken or Salmon",
            "Beneful IncrediBites variety pack made with real beef, chicken or salmon and real vegetables you can see formulated specifically for small dogs",
            "High protein dog food helps support strong muscles and contains no artificial colors, flavors or preservatives",
            "Small, tender bites are perfect for small mouths, and a flavorful gravy adds the finishing touch to this small adult dog food",
            "100 percent complete and balanced small breed adult dog food includes 23 essential vitamins and minerals"
        ],
        description: "Serve your small breed dog a meal made just for him with a Purina Beneful IncrediBites adult wet dog food variety pack. Each of these protein-rich recipes features bite-sized, meaty chunks that are easy for his small mouth and teeth to manage along with a touch of savory sauce. Our premium wet dog food for small dogs is made with real salmon or farm-raised beef or chicken to help provide a variety of delicious flavors that keeps mealtime exciting for him. We craft each small dog recipe with no artificial colors, flavors or preservatives. Purina Beneful IncrediBites adult wet dog food offers him 100 percent complete and balanced nutrition and supplies 23 essential vitamins and minerals. Our Beneful small breed adult dog food delivers healthy food choices that taste great. Your little guy finds flavor in each bite of the small dog food with gravy, and you find the enjoyment that comes from feeding him good food that's also good for him.",
        category: "pets",
        price: 20.80,
        quantity: 22
    )

    pets11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets11.jpg')
    pets11.picture.attach( io: pets11Image, filename:'pets11.jpg')
    
    pets12 = Product.create(
        title: "Glad for Pets Black Charcoal Puppy Pads-New & Improved Puppy Potty Training Pads That ABSORB & NEUTRALIZE Urine Instantly-Training Pads for Dogs, Dog Pee Pads, Pee Pads for Dogs, Dog Crate Pads", 
        bullet:[
            "ABSORBS PET URINE AND ODOR — Glad Pets carbon-activated puppy pads absorb odor and pet urine",
            "MADE WITH 5 STRONG LAYERS — Wee wee pads for dogs are made with 5 layers, which ensure leak proof protection from dog and puppy stains. The polymer layer absorbs liquid and turns into gel for easy clean-up",
            "PERFECT FOR PUPPY CRATES — Use these dog pee pads on their own, in a puppy crate, or even as a liner",
            "PEE PADS ARE SUITABLE FOR ALL DOGS — Training pads can be used for new puppies or senior dogs",
            "PHEROMONE ATTRACTANT — Pet training pads are developed with pheromone attractant so your dog knows where to go"
        ],
        description: "Glad for Pets training pads are dependable and specially designed for easy clean up! Built with glad level strength, everyday training and clean up accessories bring innovation to each stage of your dog's life, from training pads using activated carbon technology to daily waste bags with dispensers. glad activated carbon training pads for pets are made with five layers of strength for leak-proof protection. The activated carbon layer absorbs odor and Yellow spots while the polymer layer absorbs and locks in liquid, all while turning it into a gel. The quilted cushion technology prevents the liquid from spreading. these puppy pads use a pheromone attractant, which helps make training your dog A breeze. This dog attractant shows your dog or puppy exactly where to go. these dog pee pads can hold up to three cups of liquid and absorbs in under 30 seconds. these dog training pads are perfect for potty training puppies and dogs, and for senior dogs that need extra assistance while inside. Puppy pads are also effective as a crate liner or dog bed liner and are easy to clean up and throw away once they have been soiled. Get your glad activated training pads and see how easy cleanup can be! glad Charcoal Wee pads measure 23 by 23 inches and are ideal for small dogs and puppies. In addition to this 150 pack, activated carbon training pads for dogs are also available in packs of 14, 30, 50, and 100 count sizes. Be sure to check out glad ultra and Jumbo training pads If you have multiple dogs using Wee pads at home.",
        category: "pets",
        price: 45.38,
        quantity: 31
    )

    pets12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/pet/pets12.jpg')
    pets12.picture.attach( io: pets12Image, filename:'pets12.jpg')
        
    # home, garden & tools
    home1 = Product.create(
        title: "LINQWkk Metal Tin Retro Sign- Vintage Girl with Horse and Dogs Metal Poster, She Lived Happily Ever After Metal Poster, Vintage Art, Retro Metal Poster, Vintage Wall Art, Living Room Decor", 
        bullet:[
            "Measure approximately 8 inch x 12 inch. (20 cm x 30 cm). Vertically or horizontally.",
            "All of our premium signs have 4 pre-drilled holes and can be easy Installation.",
            "High-quality environmentally friendly metals sign / plaque，Made of outdoor durable metal, non-glare finish. The metal signs can be used for many years.",
            "A perfect wall decoration painting for living room, bedroom, kitchen, office, hotel, dining room, office, bar etc,and a great gift to your friends, families and relatives.",
            "If You Have Any Questions,Please Contactwe,if The Product Has Any Quality Problems, We Support A Full Refund, You Can Click To\"add To The Shopping Cart\" Now! Rest Assured To Buy."
        ],
        description: "You can find thousands kinds of tin sign in our store.all tin signs are a perfect addition to any area or room. display them wherever you choose. Indoor or outdoor. Homes Apartments Offices Cubicles College dorms Classrooms Pubs Restaurants Basements Garages Patios Porches Man Caves Kitchens Bathrooms Bedrooms Hallways.Plus our tin signs are weather resistant enough for use on outside walls, fences and gates. So basically ANYWHERE!Our tin signs have rolled edges, so they are safe to handle. They all have 4 Pre drilled holes in each sign for easy mounting. Simply use tacks, pushpins, hooks, small nails or screws even use magnets or any kind of tape.also makes a fantastic gift! this sign has some extra Rust patina for that cool look and feel!perfect gift for men women kids friend!have a nice shopping time! Thank You Visit Our Shop!",
        category: "home",
        price: 9.85,
        quantity: 1
    )

    home1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home1.jpg')
    home1.picture.attach( io: home1Image, filename:'home1.jpg')
    
    home2 = Product.create(
        title: "Signature Design by Ashley Valebeck 30\" Farmhouse Pub Height Barstool, Brown", 
        bullet:[
            "Polyester",
            "TALL SWIVEL BAR STOOL: Find the perfect balance between fashion-forward and farmhouse with the mixed materials of these Barstools – what a charming addition to a bar or high table",
            "HANDSOMELY CRAFTED: Each bar stool chair is made of brown finished metal, wood and engineered wood. And designed with a 360 degree swivel Cushioned seat is upholstered with linen colored polyester",
            "RUSTIC FLAIR: Distinctive features such as the neutral cushioned seat, swivel and nailhead trim all come together to create a timeless rustic addition to your decor",
            "VERSATILE USE: This bar stool chairs measure 19.5\" W x 19.5\" D x 43\" H for your eat in kitchen, counter height dining table or extra seats at your bar",
        ],
        description: "A touch of rustic-industrial style is such a fashion-forward choice, and the Valine barstool set doesn’t disappoint.",
        category: "home",
        price: 132.99,
        quantity: 0
    )

    home2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home2.jpg')
    home2.picture.attach( io: home2Image, filename:'home2.jpg')
    
    home3 = Product.create(
        title: "Hookless Scandiary Print Shower Curtain with Peva Liner, 71 X 74, Multi", 
        bullet:[
            "100% Polyester Curtain",
            "71\" W x 74\" L",
            "3 in 1 shower curtain construction with built-in liner and rings",
            "Includes snap in peva liner",
            "Easy care - machine wash"
        ],
        description: "Hookless Shower Curtain 71 x 74. Includes a snap in peva liner and flex on rings no hooks required.",
        category: "home",
        price: 29.99,
        quantity: 9
    )

    home3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home3.jpg')
    home3.picture.attach( io: home3Image, filename:'home3.jpg')
    
    home4 = Product.create(
        title: "Impact Canopy 10' x 10' Canopy Tent Gazebo with Dressed Legs, White", 
        bullet:[
            "Portable Shelter: Steel pop up 10 Feet by 10 feet Instant canopy tent with leg skirts for an added touch of elegance. Serves as a portable canopy cover for outdoor celebrations, weddings, and corporate events weddings",
            "Includes: 10x10 powder coated steel frame, 210 denier canopy fabric top, carry bag, and rope/spike kit",
            "Easy set up: Set up is quick with no tools required and can easily be done by one person",
            "Specifications: Weight – 28 lbs. ; Canopy base measures 10 feet x 10 feet with maximum height to peak of 8’3\" at the highest setting; Head Clearance of 5’10\" under the valance at the highest setting; Open truss design",
            "6 month limited (weather damage is not covered under )"
        ],
        description: "Our gazebo-style pop-up canopy adds a touch of elegance to any event with its clean lines & fabric dressed legs. Great for use at weddings, birthday parties, corporate events or any outdoor celebration.",
        category: "home",
        price: 68.99,
        quantity: 11
    )

    home4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home4.jpg')
    home4.picture.attach( io: home4Image, filename:'home4.jpg')
    
    home5 = Product.create(
        title: "Hunter Fan Company Hunter 44\" LED Kit 59454 Minimus 44 Inch Low Profile Ultra Quiet Ceiling Fan with Energy Efficient Light and Remote Control, Brushed Nickel Finish", 
        bullet:[
            "CLASSIC CEILING FAN: The casual Minimus fan comes with LED light covered by cased white glass that will keep home interior current and inspired; Measures 44 x 44 x 10.3 Inch",
            "MULTI-SPEED REVERSIBLE FAN MOTOR: Whisper Wind motor delivers ultra-powerful airflow with quiet performance; Change the direction from downdraft mode during the summer to updraft mode during the winter",
            "LED LIGHT KIT: Energy-efficient dimmable LED light bulbs let you control the lighting and ambiance of the living space; The long lasting bulbs have longer lifespan than traditional bulbs",
            "PREMIUM HANDHELD REMOTE: Adjust the brightness of light and speed of the brushed nickel ceiling fan with ease from anywhere in the room; Audible beep confirms button command on remote control",
            "ROOM PLACEMENT: Indoor fan is designed to be used in rooms with low ceilings, the low-profile housing fits flush to the ceiling; Ideal fan for living room, lounge, bedroom, children's room and nursery"
        ],
        description: "The Minimus casual modern ceiling fan with mass appeal will fit flawlessly in your home's modern interior design. The beautiful, clean finish options work together with the high contrast of angles throughout the design to create a look that will keep your space looking current and inspired. The LED light ceiling fan has fully-dimmable, high-efficient LED bulbs that give you total control over your lighting. The Minimus fan features 13-degree blade pitch optimized to ensure ideal air movement and peak performance. This reversible fan comes with reverse rotation fan blades that keep the rooms in your home feeling cool during summers and warm during winters. Ideal for use in rooms or spaces with low ceilings, between heights of 8 foot and 9 foot.",
        category: "home",
        price: 225,
        quantity: 32
    )

    home5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home5.jpg')
    home5.picture.attach( io: home5Image, filename:'home5.jpg')
    
    home6 = Product.create(
        title: "Moen YB2103BN Dartmoor Double Robe or Towel Hook, Brushed Nickel", 
        bullet:[
            "WARM AND INVITING: Brushed Nickel finish provides a lightly brushed warm-grey metallic look",
            "COORDINATING COLLECTION: Coordinates with other accessories in the Dartmoor Collection",
            "DURABLE CONSTRUCTION: Corrosion-resistant metal mounting post for extra security",
            "EASY TO INSTALL: Included template and mounting hardware take the guesswork out of installation",
            "HELPING HAND: Keeps hand towels easily accessible and also displays decorative towels"
        ],
        description: "In scale and in style, the Dartmoor collection of bath faucets and accessories is designed to delight. Gently flaired details add beauty and function in your bathroom. Sculpted handles and finial detailing create a tailored look that's thoroughly classic.",
        category: "home",
        price: 16.84,
        quantity: 1
    )

    home6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home6.jpg')
    home6.picture.attach( io: home6Image, filename:'home6.jpg')
    
    home7 = Product.create(
        title: "mDesign Modern Stackable Plastic Open Front Dip Storage Organizer Bin Basket for Home Office Organization - Shelf, Cubby, Cabinet, and Closet Organizing Decor - Ligne Collection - 4 Pack - Clear", 
        bullet:[
            "SMART STORAGE: Create space-saving storage in closets, shelves, cabinets, cupboards or on your work surface; Maximize your storage space; Use them side by side to create the storage solution that works for you; Perfect for storing extra office supplies like staples, felt tip pens, paper clips, binder clips, staplers, notepads, sticky notes, washi tape, correction tape, glue sticks, scissors and more; The square format is great for cube storage shelving and furniture units; Set of 4",
            "EASY-REACH OPEN FRONT: Large opening dips down in front, making it simple to grab what you need quickly and easily; The perfect storage and organizing solution for modern kitchens and hectic households that are on the go; Use these convenient storage bins to keep children's crafting items all in one place; Great for school supplies, too; Great for busy families and professional organizers",
            "FUNCTIONAL & VERSATILE: These are great for other rooms in your home - try them in the bedroom, bathroom, laundry room, kitchen, craft room, toy room, playroom, garage and more; mDESIGN TIP: Create a storage spot in the mudroom or entryway for outdoor accessories like baseball hats, caps, gloves and scarves; Versatile, light weight and easy to transport, these are great in apartments, condos, dorm rooms, RVs and campers",
            "QUALITY CONSTRUCTION: Made of durable shatter-resistant plastic; Easy Care - clean with mild soap and water; Do not place in dishwasher",
            "THOUGHTFULLY SIZED: Each Measures 12\" x 8\" x 6\" high"
        ],
        description: "This Office and Desk Storage Organizer Bin from mDesign creates a neat and tidy workspace. Use it in the office, at school, in your art studio, or in a garage workshop. These generously sized open front baskets make it easy for you to organize like a pro. Keep all of your office supplies organized and easy to find. This bin has a transparent appearance so you can locate what you need easily. Each bin can hold notebooks, files, mail, pens, pencils, account information, and other office essentials. These versatile bins are great in any room of the home. mDesign - Solutions for Home. Solutions for Life.",
        category: "home",
        price: 46.99,
        quantity: 0
    )

    home7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home7.jpg')
    home7.picture.attach( io: home7Image, filename:'home7.jpg')
    
    home8 = Product.create(
        title: "Red Heart Super Saver Yarn 312 Black", 
        bullet:[
            "100% Acrylic",
            "Made in USA",
            "Red heart super saver solid yarn",
            "Made of 100-percent acrylic medium worsted material",
            "Available for 5-mm knitting needle and 5.5-mm crochet hook",
        ],
        description: "The great wash performance and no dye lot solids makes this red heart super saver solid yarn for wearable's, home accessories and more. Made of 100-percent acrylic medium worsted material. It is available for 5 mm knitting needle and 5.5 mm crochet hook. Care in structions are, machine wash (maximum temperature 104F/40C), tumble dry, do not bleach, do not iron and dry cleanable. Made in USA. Available in black color. Measures 364-yards length.",
        category: "home",
        price: 3.67,
        quantity: 1
    )

    home8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home8.jpg')
    home8.picture.attach( io: home8Image, filename:'home8.jpg')
    
    home9 = Product.create(
        title: "Brita Standard Everyday Water Filter Pitcher, White, Large 10 Cup, 1 Count", 
        bullet:[
            "This Everyday water pitcher is made without BPA, easy to fill, fits in most fridges and can hold 10 cups of water, enough to fill 3 24-ounce reusable water bottles; Packaging may vary",
            "This space efficient Brita pitcher is fridge friendly, features an easy-fill lid to make refills a breeze; Height 10.7\"; Width 5.4\"; Length/Depth 10.1\"; Weight 1.3 pounds",
            "Get great tasting water without the waste",
            "By switching to Brita, you can save money and replace 1,800 16.9 fl oz single-use plastic water bottles a year",
            "Only Brita filters are certified to reduce Chlorine (taste and odor), Copper, Mercury and Cadmium in Brita systems, while a sticker indicator makes filter reminders effortless",
            "Standard filters are compatible with all Brita pitchers and dispensers except Stream; replace the Brita Standard water filter every 2 months"
        ],
        description: "Drink healthier, great tasting tap water with this BPA free Brita 10 cup water pitcher. With the Advanced filter technology, Brita cuts the taste and odor of chlorine to deliver great tasting water, and is certified to reduce copper, cadmium and mercury impurities, which can adversely affect your health over time. The Brita water pitchers flip top lid makes refilling a breeze and just a glance at the sticker filter indicator lets you know when it is time to change the Brita replacement filter. This large water pitcher comes with 1 water filter, which should be changed every 40 gallons or about 2 months for best results. Start drinking healthier, great tasting water with Brita today.",
        category: "home",
        price: 26.99,
        quantity: 3
    )

    home9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home9.jpg')
    home9.picture.attach( io: home9Image, filename:'home9.jpg')
    
    home10 = Product.create(
        title: "Primula Stewart Whistling Stovetop Tea Kettle Food Grade Stainless Steel, Hot Water Fast to Boil, Cool Touch Folding, 1.5 Qt, Brushed with Black Handle", 
        bullet:[
            "PREMIUM KETTLE BUILT FOR PERFORMANCE- The Stewart tea kettle is made of durable, food grade stainless steel that will last.",
            "EASY TO USE- This kettle will boil water in no time and features a flip-up whistling spout that easily opens when it’s time to pour.",
            "SIMPLE TO STORE: The folding handle makes it easy to store this kettle in a cabinet, drawer or pantry.",
            "EASY TO CLEAN- The wide mouth lid of the kettle makes cleaning a simple task, leaving enough room to easily empty and wipe dry the kettle between uses. It's that easy.",
            "LARGE CAPACITY- Great for entertaining and serving family and friends, the large capacity is perfect for making multiple cups of coffee or tea.",
        ],
        description: "Add style and function to your kitchen with this attractive stovetop water kettle from Primula. Like classic whistling tea kettles, the Stewart emits a pleasant whistle to alert you that your water is boiling. The Stewart Whistling Kettle is sturdily designed and constructed, and sports a timeless design to suit any decor from traditional to modern. The spout opens easily with just a quick flip. The handle features a stay cool coating that protects your hand from the heat, and folds down for easy storage in tight spaces. The classic shape and brushed stainless steel finish make this kettle a gorgeous addition to your kitchen.",
        category: "home",
        price: 8.99,
        quantity: 0
    )

    home10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home10.jpg')
    home10.picture.attach( io: home10Image, filename:'home10.jpg')
    
    home11 = Product.create(
        title: "YI Home Security Camera Surveillance, 1080p WiFi IP Indoor Camera with Night Vision, Motion Detection, Phone App, Pet Cat Dog Cam Works with Alexa and Google Assistance", 
        bullet:[
            "Optional 24/7 Emergency Response Service - YI’s motion alerts and live video feeds are now equipped with the option to instantly involve Noon light's Certified Emergency Dispatchers, who coordinate with police, fire, and EMS agencies on customers’ behalf to ensure the situation is promptly handled.",
            "Upgraded Smart AI Detections- YI cloud storage comes with the latest in Smart AI capabilities which are able to distinguish Person, Vehicle, or Animal accurately and reduce false alarms significantly. (Subscription Needed)",
            "Works With Alexa - Officially Alexa compatible and works with any screen-based Alexa device. You can use the Alexa Skill to turn on your camera or view its live feed with a simple voice command.",
            "Reliable Wi-Fi Connectivity - Access your camera with our mobile / PC APP anytime and anywhere, more flexible with Home/Away mode. Allows sharing your camera with up to 5 family members or friends, and view multiple cameras on a single account. 9 live feeds on pc app is available now. Built-in support for 2.4Ghz (5Ghz currently not supported) Wi-Fi band.",
            "Cloud & Local Storage: Motion-triggered video clips will be safely stored on the Cloud for up to 30 days. For local storage, micro SD-cards up to 64GB are supported (micro SD-card not included)."
        ],
        description: "Building on the success of the #1 best-selling YI Home Indoor Security Camera, the YI Home Camera 1080p delivers high definition videos of your home, so you can view every moment in even clearer quality. Its Baby Crying Detection technology also acts as a state of the art baby monitor, sending an alert to your phone at the first cry of your baby. By connecting to YI Cloud you can be rest assured you'll never lose any footage, even if your camera is damaged or stolen.",
        category: "home",
        price: 24.99,
        quantity: 0
    )
    
    home11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home11.jpg')
    home11.picture.attach( io: home11Image, filename:'home11.jpg')

    home12 = Product.create(
        title: "Suncast 33 Gallon Hideaway Can Resin Outdoor Trash with Lid Use in Backyard, Deck, or Patio, 33-Gallon, Brown", 
        bullet:[
            "OUTDOOR PATIO TRASH CAN: Features a decorative wicker-style design for a stylish addition to your outdoor space",
            "FUNCTIONAL DESIGN: Lid is hinged for easy access and latches securely so garbage stays in the can",
            "CONVENIENT USE: Compatible with standard 30 gal. garbage bags for easy and convenient use",
            "DURABLE CONSTRUCTION: Constructed with durable resin that resists fading and keeps water out through every season",
            "COMPACT SIZE: Measures 16\" x 15.75\" x 31.7\" to keep your porch clean without taking up too much space Coverage Area (sq. ft.): 1.75 ft²"
        ],
        description: "Keep unsightly garbage out of view with the Suncast 33 Gallon Resin Outdoor Hideaway Patio Trash Can. This patio trash can features a decorative wicker-style design for a stylish addition to your outdoor space. The decorative and functional waste bin is compatible with standard 30 gal. garbage bags for easy and convenient use. This trash can also features a secure latching design to help keep trash in and critters out. Constructed from durable resin that resists fading, this trash can is built to bring provide long-lasting use on your porch or patio. The Suncast 30 Gallon Resin Outdoor Hideaway Patio Trash Can measures 16\" x 15.75\" x 31.7\" to keep your porch clean without taking up too much space. Suncast takes pride in helping customers enhance their indoor and outdoor spaces with quality products that are stylishly designed. You take pride in creating a beautiful environment. We take pride in keeping it that way.",
        category: "home",
        price: 59.00,
        quantity: 8
    )

    home12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/home/home12.jpg')
    home12.picture.attach( io: home12Image, filename:'home12.jpg')
    
    # clothing
    clothing1 = Product.create(
        title: "Van Heusen Men's Dress Shirt Slim Fit Stain Shield Stretch", 
        bullet:[
            "59% Cotton, 35% Recycled Polyester, 6% Spandex",
            "Imported",
            "Button closure",
            "Machine Wash",
            "Stain Shield technology blocks tough water- and oil-based stains before they start; just rinse with water & keep going. Stretch: Fabric stretches and moves with you for extra comfort."
        ],
        description: "Block tough stains before they start with Van Heusen Stain Shield dress shirts. Designed for extreme stain defense even against tough water- and oil-based spills, this innovative button-up will quickly become your new go-to style at work, home, or out to dinner. When accidents happen, just rinse with running water and watch the mess roll off. The quick-drying, soft fabric also has natural stretch for added all-day comfort. The machine washable style is easy to wear right out of the dryer.",
        category: "clothing",
        price: 32.50,
        quantity: 3
    )

    clothing1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing1.jpg')
    clothing1.picture.attach( io: clothing1Image, filename:'clothing1.jpg')
    
    clothing2 = Product.create(
        title: "The Drop Women's Greta Fitted Square Neck Halter Sweater Bralette", 
        bullet:[
            "53% Viscose, 45% Nylon, 2% Spandex",
            "Imported",
            "Pull On closure",
            "Machine Wash"
        ],
        description: "The Drop is your inside source for must-have style inspiration from global influencers. Shop limited-edition collections and discover chic wardrobe essentials from Staples by the Drop. Look out for trend inspiration, exclusive brand collaborations, and expert styling tips from those in the know.",
        category: "clothing",
        price: 34.71,
        quantity: 1
    )

    clothing2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing2.jpg')
    clothing2.picture.attach( io: clothing2Image, filename:'clothing2.jpg')
    
    clothing3 = Product.create(
        title: "YIKOEE Glitter Rhinestone Purse Crystal Evening Clutch Bag", 
        bullet:[
            "Imported",
            "RHINESTONE MATERIAL: It appears to be high quality rhinestone material, nice and well-made. The shape is unique and stylish. It is feminine and elegant and provides a subtle flash a glamour.",
            "WITH ZIPPER CLOSURE: The clutch purses for women are designed with a metal zipper, which is easy to open and close, making it easy to take out your items while protecting them from falling.",
            "FASHION CRYSTAL STRAP: The strap length is perfect to keep close to your body and let your hand free. It's comfortable enough to allow simply hang on your wrist without having to hold it all night.",
            "SMALL BUT ROOMY SPACE: Its size is 12.2\" × 0.4\" × 6.3\". The womens evening handbags are super cute and shiny. It has decent size for phone, mirror, tissues, lip gloss and other items."
        ],
        description: "The evening clutch is very pretty and unique. It is suitable for weddings, a night on the town, an Gatsby April wedding, a 1920s themed costume party or other prom.",
        category: "clothing",
        price: 29.99,
        quantity: 0
    )

    clothing3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing3.jpg')
    clothing3.picture.attach( io: clothing3Image, filename:'clothing3.jpg')
    
    clothing4 = Product.create(
        title: "Kenneth Cole On Track Pack Vegan Leather 15.6\" Laptop & Tablet Bookbag Anti-Theft RFID Backpack for School, Work, & Travel, Cognac, Laptop", 
        bullet:[
            "TECHNI-COLE RFID: Anti-theft radio frequency identification (RFID) blocking technology to help block radio waves from being transmitted from U.S. passports and certain credit/debit cards.",
            "Laptop pocket is padded to fit most laptops with up to a 15.6-inch screen.",
            "Durable, grainy faux leather exterior with a tear-resistant, fully lined interior .",
            "Main compartment interior features a mesh zipper pocket, dual open slip pockets, and plenty of space to store your belongings.",
            "Rear exterior features a padded air-mesh back panel, trolley tunnel, and adjustable padded shoulder straps."
        ],
        description: "If you’re searching for fashion forward laptop backpack to store all your business and travel necessities, you’re on the right track. Kenneth Cole Reaction’s \"On Track Pack\" is the solution to all your packing needs. This backpack is crafted from high quality materials, including a durable pebbled faux leather exterior with a tear-resistant, fully lined interior. Features premium, self-repairing zippers for long-lasting use. This backpacks fully-lined main compartment interior features a mesh zipper pocket, dual open slip pockets, and plenty of space to store your belongings, as well as a fully padded rear compartment to securely hold most laptops with up to a 15.6-inch screen. TECHNI-COLE RFID: Anti-theft radio frequency identification (RFID) blocking technology in organizer pockets lined with thin shielding fabric to help block radio waves from being transmitted from U. S. passports and certain credit/debit cards. A front zipper pocket includes an RFID protected flapover pocket, a gusseted open accessory pocket, and two pen holders. Additional elastic pockets on both sides provide extra space to hold a water bottle or other small items you need on hand. The padded top handle has a 1.5-inch handle drop for comfortable carrying, as well as a padded air-mesh back panel with padded, adjustable shoulder straps. A trolley tunnel on the rear exterior is made to fit over most retractable trolley handles for another convenient, hands-free carrying option. ★ Overall Dimensions: 16\" L x 12\" H x 5.5\" D. ★ Laptop Compartment Dimensions: 10.5\" L x 15.25\" H x 1\" D. ★ Product Weight: 2.3 lbs. ★ A stylish, pebbled vegan leather laptop travel bookbag backpack for the professional on the go. ★",
        category: "clothing",
        price: 59.99,
        quantity: 1
    )

    clothing4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing4.jpg')
    clothing4.picture.attach( io: clothing4Image, filename:'clothing4.jpg')
    
    clothing5 = Product.create(
        title: "Under Armour Men's New Freedom Flag T-Shirt", 
        bullet:[
            "60% Cotton, 40% Polyester",
            "Imported",
            "Pull On closure",
            "Machine Wash",
            "Super-soft, cotton-blend fabric provides all-day comfort"
        ],
        description: "Under Armour’s mission is to make all athletes better through passion, design and the relentless pursuit of innovation. The technology behind Under Armour's diverse product assortment is complex, but the program for reaping the benefits is simple: wear HeatGear when it's hot, ColdGear when it's cold, and AllSeasonGear between the extremes.",
        category: "clothing",
        price: 20.03,
        quantity: 0
    )

    clothing5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing5.jpg')
    clothing5.picture.attach( io: clothing5Image, filename:'clothing5.jpg')
    
    clothing6 = Product.create(
        title: "FREDD MARSHALL Men's Long Sleeve Slim Fit 100% Cotton Plaid Shirts", 
        bullet:[
            "100% Cotton",
            "Imported",
            "Button closure",
            "Machine Wash",
            "Machine wash, hand wash suggested and low iron if necessary."
        ],
        description: "Fredd Marshall Shirts - All of the items are made with 100% cotton. Dedicated to provide more soft, comfortable, fashion, leisure, high quality shirts to you. Since 1973.",
        category: "clothing",
        price: 22.97,
        quantity: 92
    )

    clothing6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing6.jpg')
    clothing6.picture.attach( io: clothing6Image, filename:'clothing6.jpg')
    
    clothing7 = Product.create(
        title: "U.S. Polo Assn. Men’s Underwear – Low Rise Briefs with Contour Pouch (7 Pack)", 
        bullet:[
            "60% Cotton, 40% Polyester",
            "Imported",
            "Machine Wash",
            "OFFICIAL U.S. POLO ASSN: Men’s Low Rise Briefs; Authentic and officially sanctioned by the United States Polo Association; More than just a brand – it’s an experience",
            "UNDERWEAR FOR MEN: Soft, breathable men’s briefs offer gentle support without being restrictive; Comfortable to wear under sweatpants, jeans, khakis, chinos, or dress pants"
        ],
        description: "U.S. Polo Assn. Men's Low-Rise Brief Underwear in Assorted Colors is made for gents who love to win. Ideal for athletes or just plain busy guys, whether going back and forth between meetings or hitting the gym on the weekend. Our breathable fabric keeps you fresher longer. Value - This 7-Pack of roomy underwear comes in different colors to match your style and mood. Comfy Fabric is great for wearing under pajamas and lounge pants. Well Made - The smooth waistband and hip hugger profile help to reduce friction and stay in place during sports or while you're playing with the kids. Stylish - These briefs provide great coverage, and they are so comfy, you won't feel like you're wearing them. Easy to Clean - Machine wash and tumble dry; Please Reference the Variations for all Available Sizes and Colors U.S. Polo Assn. Offers Premium Clothing, Shoes & Jewelry at Affordable Prices because we value every customer that visits our listings! Stop by Our Storefront to See the Rest of Our Great Deals; we're confident you're going to find items that anyone who needs a gift will absolutely love and adore!",
        category: "clothing",
        price: 21.99,
        quantity: 0
    )

    clothing7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing7.jpg')
    clothing7.picture.attach( io: clothing7Image, filename:'clothing7.jpg')
    
    clothing8 = Product.create(
        title: "Nautica Women's Stretch Cotton Polo Shirt", 
        bullet:[
            "96% Cotton, 4% Elastane",
            "Imported",
            "Button closure",
            "Machine Wash",
            "V-neck with ribbed collar"
        ],
        description: "Sporty and feminine style combine for this classic-fitting, comfortable stretch polo-a smart choice for casual days in the office.",
        category: "clothing",
        price: 26.64,
        quantity: 3
    )

    clothing8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing8.jpg')
    clothing8.picture.attach( io: clothing8Image, filename:'clothing8.jpg')
    
    clothing9 = Product.create(
        title: "Leggings Depot Buttery Soft High Waisted Women's Leggings - Regular/Plus / 1X3X / 3X5X Sizes : Capri & Full Length", 
        bullet:[
            "UPGRADED PREMIUM FABRIC - Our high waisted 1 inch waistband ActiveFlex leggings are made from a ultra soft ActiveFlex fabric (84% Polyester, 16% Spandex), which is the optimal blend of smooth brushed polyester and spandex. These leggings are moisture-wicking & offer an ultra-stretch fit that gives compression and support.",
            "4 WAY-STRETCH - Breathable and stretchy fabric that gives complete coverage without becoming see-through, keeping you comfortable and secure throughout the day! Fashionable and with tech designed to pull away moisture from your body while also providing lightweight comfort and freedom of movement no matter what you're doing.",
            "PERFECT FOR ANY ACTIVITY - These leggings for women with ultra-soft fabric are squat proof & perfect for yoga, jogging or daily workout. The right amount of compression keeps everything in place and gives supports that don't sag or roll! These women's basic 1 inch waistband ActiveFlex leggings offer a high waist with plenty of stretch.",
            "EVERYDAY WEAR & CARE - Our 1 inch waistband ActiveFlex leggings are stylish, and on-trend for everyday wear & will look fantastic combined with dresses, shirts, or tunics and will keep you comfy whether you're simply chilling out at home or out with friends! These leggings are also composed of high-quality, easy-to-care materials. Easy to wear and care for, it retains its form and color after washing & does not get saggy in the knees. Wash them with like colors and tumble dry on low.",
            "100% CUSTOMER SATISFACTION - Our 100% money-back guarantee covers you. If you are not completely satisfied with your order, you have 30 days to return it with no questions asked. If you have any further questions or issues, please contact us & we will assist you in the best way we can. Choose your favorite color and click \"Add to Cart\" now."
        ],
        description: "Leggings Depot keeps making efforts to offer the largest selection of high quality pants in different colors, prints and sizes including plus sizes at the most affordable prices.",
        category: "clothing",
        price: 14.99,
        quantity: 1
    )

    clothing9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing9.jpg')
    clothing9.picture.attach( io: clothing9Image, filename:'clothing9.jpg')
    
    clothing10 = Product.create(
        title: "Roxy Women's Whole Hearted Long Sleeve UPF 50 Rashguard", 
        bullet:[
            "86% Polyester, 14% Elastane",
            "Imported",
            "Pull On closure",
            "Hand Wash Only",
            "Soft, resistant stretch, recycled polyester elastane jersey"
        ],
        description: "The whole hearted long sleeve rash guard includes a large Roxy logo screens at the chest and sleeve and UPF 50 protection.",
        category: "clothing",
        price: 36.00,
        quantity: 3
    )

    clothing10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing10.jpg')
    clothing10.picture.attach( io: clothing10Image, filename:'clothing10.jpg')
    
    clothing11 = Product.create(
        title: "Hurley Women's Standard Rash Guard Top", 
        bullet:[
            "84% Polyester, 16% Spandex",
            "Imported",
            "Pull On closure",
            "Hand Wash Only",
            "Click on The Hurley Logo To Shop The Entire Hurley Collection"
        ],
        description: "Hurley One And Only Short Sleeve Rash Guard Top With UPF 50+ Sun Protection",
        category: "clothing",
        price: 25.67,
        quantity: 0
    )

    clothing11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing11.jpg')
    clothing11.picture.attach( io: clothing11Image, filename:'clothing11.jpg')
    
    clothing12 = Product.create(
        title: "LAIWANG Men's Outdoor Performance Tactical Polo Shirts Short Sleeve Moisture Wicking Sports Golf Tennis T-Shirt", 
        bullet:[
            "100% Polyester",
            "Button closure",
            "Hand Wash Only",
            "BUTTON CLOSURE: The LAIWANG Men's Outdoor Performance Polo Shirts Short Sleeve offers a contemporary and clean design with a button closure, making it very practical for everyday use.The small pockets on the side sleeves can hold items.There is a ring under the button, suitable for diagonally hanging sunglasses, etc.Classic badge logo, both dazzling and fashionable.",
            "MOISTURE WICKING: Keep cool and dry in hot summer days The LAIWANG Men's Performance Polo Shirts Short Sleeve is made out of a breathable fabric that keeps you cool and dry in hot summer days, perfect for any outdoor activity. The fabric is moisture-wicking and keeps you cool and dry all day long."
        ],
        description: "The LAIWANG Mens Polo Shirt is a cool moisture wicking t-shirt that is designed for outdoor sports. It features a button closure, moisture wicking, and outdoor performance. This shirt is a tactical polo shirt that is perfect for golf, tennis and other sports.",
        category: "clothing",
        price: 22.99,
        quantity: 0
    )

    clothing12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/clothing/clothing12.jpg')
    clothing12.picture.attach( io: clothing12Image, filename:'clothing12.jpg')
    
    # Shoes
    shoes1 = Product.create(
        title: "Under Armour Women's Ansa Fix Slide Sandal", 
        bullet:[
            "fabric-and-synthetic",
            "Imported",
            "Rubber sole",
            "Fixed strap with added foam underneath for an extra comfortable fit",
            "Drop-in EVA footbed provides underfoot cushioning",
            "EVA outsole delivers great durability & traction"
        ],
        description: "Fixed strap with added foam underneath for an extra comfortable fit. Drop-in EVA footbed provides underfoot cushioning. EVA outsole delivers great durability & traction.",
        category: "shoes",
        price: 19.60,
        quantity: 2
    )

    shoes1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes1.jpg')
    shoes1.picture.attach( io: shoes1Image, filename:'shoes1.jpg')
    
    shoes2 = Product.create(
        title: "adidas Unisex-Adult X Speedflow.3 Firm Ground Soccer Shoe", 
        bullet:[
            "Rubber sole",
            "Soft soccer cleats for comfort and speed",
            "SPEEDSKIN UPPER: Lightweight and semi-translucent, the textile upper locks you in for super-fast play",
            "CLEATED OUTSOLE: Cleated TPU outsole for firm ground play",
            "Unisex product is men's sizing. Women should size down 1 to 1.5 sizes",
            "MADE WITH RECYCLED CONTENT: Made in part with recycled content generated from production waste, e.g. cutting scraps, and post-consumer household waste to avoid the larger environmental impact of producing virgin content"
        ],
        description: "Designed for fluid play and an excellent touch, these adidas soccer cleats feature a soft Speedskin upper that hugs the foot. Built for play on firm ground, these cleats have a durable TPU outsole. The four-way stretch tongue makes it easy to get them on and off.",
        category: "shoes",
        price: 48.00,
        quantity: 0
    )

    shoes2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes2.jpg')
    shoes2.picture.attach( io: shoes2Image, filename:'shoes2.jpg')
    
    shoes3 = Product.create(
        title: "Rebel Athletic Ruthless Cheer Shoe", 
        bullet:[
            "Strikingly Beautiful Design, Unique weight-distribution technology for feather-light feel",
            "Transverse Flex Tunnel for increased flexibility and ease of weight transfer toes",
            "Rear heel finger notch and Patented Finger Grooves for outstanding stunt grip"
        ],
        description: "Strikingly Beautiful Design, Unique weight-distribution technology for feather-light feel. Transverse Flex Tunnel for increased flexibility and ease of weight transfer toes. Rear heel finger notch and Patented Finger Grooves for outstanding stunt grip.",
        category: "shoes",
        price: 82.32,
        quantity: 3
    )

    shoes3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes3.jpg')
    shoes3.picture.attach( io: shoes3Image, filename:'shoes3.jpg')
    
    shoes4 = Product.create(
        title: "Danzcue Mid Top White Cheer Shoes", 
        bullet:[
            "Women sizing. Order 1/2 size up for comfort fit. Men choose according to shoe length.",
            "Adult & Youth white cheerleading shoe features premium synthetic upper with mesh. Extremely lightweight and breathable material.",
            "White mid top cheer shoes with unique design. Soft, comfortable and stylish sneaker shoes.",
            "This Fashion athletic sport dance shoe is perfect for cheerleading competition, dancing, fitness and daily use.",
            "Sizing: 5M US: 8.74\"/22.2cm; 6M US: 9.06\"/23cm; 7M US: 9.41\"/23.9cm; 7.5M US: 9.72\"/24.7cm; 8M US: 10.04\"/25.5cm; 9M US: 10.39\"/26.4cm;10M US: 10.71\"/27.2cm; 10.5m US: 11.06\"/28.1cm"
        ],
        description: "Danzcue Mid Top Cheer Shoes. Premium synthetic upper with mesh. Extremely lightweight and breathable material. Perfect for cheerleading competition, dancing, fitness and daily use.",
        category: "shoes",
        price: 60.99,
        quantity: 9
    )

    shoes4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes4.jpg')
    shoes4.picture.attach( io: shoes4Image, filename:'shoes4.jpg')
    
    shoes5 = Product.create(
        title: "Nike Men's Basketball Shoes", 
        bullet:[
            "Rubber sole",
            "Perforated outer material made of leather, synthetic and textile provides a comfortable grip and breathability.",
            "A classic Nike Air sole on the heel provides cushioning from the court to the street.",
            "An embroidered jumpman on the heel and an embroidered jumpman mark on the tongue provide a touch of quality."
        ],
        description: "Jordan shoes, practical and fashionable.",
        category: "shoes",
        price: 111.00,
        quantity: 3
    )

    shoes5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes5.jpg')
    shoes5.picture.attach( io: shoes5Image, filename:'shoes5.jpg')
    
    shoes6 = Product.create(
        title: "New Balance Men's Fresh Foam Slip Resistant 806 V1 Industrial Shoe", 
        bullet:[
            "100% Synthetic",
            "Imported",
            "Rubber sole",
            "Fresh Foam cushioning",
            "Data-loacated slip resistant lugs"
        ],
        description: "Gear up for a busy day on the job with the New Balance 806v1. Ideal for the service industry, warehouse professionals and more, the men’s work shoe has a slip-resistant outsole to help you keep your footing on slick floors. The lightweight Fresh Foam midsole provides impressive underfoot comfort, while a Hyposkin upper keeps this men’s shoe easy to clean.",
        category: "shoes",
        price: 64.37,
        quantity: 3
    )

    shoes6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes6.jpg')
    shoes6.picture.attach( io: shoes6Image, filename:'shoes6.jpg')
    
    shoes7 = Product.create(
        title: "Cole Haan Men's Grandpro Tennis Fashion Sneaker", 
        bullet:[
            "100% Leather",
            "Imported",
            "Rubber sole",
            "Chukka boot construction;Burnished, hand-stained leather.",
            "Textile covered footbed for comfort and breathability.",
            "Rubber pods in heel and forefoot for traction."
        ],
        description: "Cole haan grandpro tennis, we've eliminated the weight of traditional court shoes without sacrificing the grand o.s. principles of flexibility, cushioning and lightweight comfort. the result a lightweight shoe you have to believe. With nearly 80 years in the business and hundreds of points of distribution in the U.S., Cole Haan is one of America's premier luxury brands. Founded in 1928 as a collaboration between Trafton Cole and Eddie Haan, Cole Haan epitomized artisan quality and impeccable craftsmanship during a time when style was everything. Originally, Cole Haan was a men's footwear label that captured the essence of the 20s spirit with beautifully-designed and well-made shoes for the dapper gentleman. Today, Cole Haan brings that heritage to all of its products, including men's and women's dress and casual footwear, belts, hosiery, handbags, small leather goods, outerwear and sunglasses.",
        category: "shoes",
        price: 81.55,
        quantity: 3
    )

    shoes7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes7.jpg')
    shoes7.picture.attach( io: shoes7Image, filename:'shoes7.jpg')
    
    shoes8 = Product.create(
        title: "Dr. Martens Women's Leona 7 Hook Boots", 
        bullet:[
            "Textile",
            "Imported",
            "Rubber sole",
            "Shaft measures approximately 7\" from arch",
            "Platform measures approximately 1 inches",
            "Made with Vintage Smooth, a retro version of signature smooth leather with subtle grained effect and contrast base color",
            "Built on the rebelliously comfortable Dr. Martens Airwair air-cushioned sole",
            "Sole is slip-resistant with superior abrasion, and is oil and fat resistant, too",
            "Classic Doc's DNA is in full effect, with visible stitching, grooved sides and a scripted heel-loop",
            "Platform height is 1.5\", and heel height is 2\""
        ],
        description: "We don't know why they ever went away, but we're so glad they're back. Embrace your inner '90s girl in these classic Dr. Martens boots—nothing works better when it comes to projecting confidence. Doc's Leona boot ups the cool factor even further with a substantial platform, while still retaining the brand's trademark stitching and air-cushioned rubber sole.",
        category: "shoes",
        price: 159.99,
        quantity: 3
    )

    shoes8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes8.jpg')
    shoes8.picture.attach( io: shoes8Image, filename:'shoes8.jpg')
    
    shoes9 = Product.create(
        title: "Jessica Simpson Women's Pixera Pointed Toe Pump", 
        bullet:[
            "Imported",
            "Synthetic sole",
            "Synthetic Material",
            "Pump - Classic",
            "Slip On Closure"
        ],
        description: "Jessica Simpson Pixera Pointed Toe Pump",
        category: "shoes",
        price: 70.99,
        quantity: 2
    )

    shoes9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes9.jpg')
    shoes9.picture.attach( io: shoes9Image, filename:'shoes9.jpg')
    
    shoes10 = Product.create(
        title: "Dr. Scholl's Shoes Women's Nova Sneaker", 
        bullet:[
            "100% Synthetic",
            "Imported",
            "100% Synthetic",
            "Sustainably crafted: linings made from recycled bottles",
            "Materials: Leopard print fabric, Faux leather, or microsuede made from recycled bottles",
            "Fit: slip-on fit with twin gore panels and padded collar for extra cushioning"
        ],
        description: "A slip-on sneaker with sporty vibes and comfort you’ll love. Sustainably crafted: linings made from recycled bottles. Materials: leopard print fabric, faux leather, or microsuede made from recycled bottles. Fit: slip-on fit with twin gore panels and padded collar for extra cushioning. Sustainable comfort: insole technology with anatomical cushioning, comfort & support. Movement: Lightweight, flexible construction moves with you. Style: sleek and sporty design with comfy round toe. So sporty, so versatile. This sustainable slip-on goes with literally everything.",
        category: "shoes",
        price: 29.95,
        quantity: 0
    )

    shoes10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes10.jpg')
    shoes10.picture.attach( io: shoes10Image, filename:'shoes10.jpg')
    
    shoes11 = Product.create(
        title: "CUSHIONAIRE Women's Puck Side Cut Out Flat +Memory Foam Insoles and Wide Widths Available", 
        bullet:[
            "Rubber sole",
            "Soft Vegan Leather upper",
            "Easy Slip on / off",
            "Memory Foam padded Insole",
            "Non slip outsole",
            "1.25 Inch Heel"
        ],
        description: "Step into these stylish and comfortable flats. These flats feature a side cut out upper and Memory Foam insoles.",
        category: "shoes",
        price: 39.99,
        quantity: 3
    )

    shoes11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes11.jpg')
    shoes11.picture.attach( io: shoes11Image, filename:'shoes11.jpg')
    
    shoes12 = Product.create(
        title: "Clarks Women's Cora Giny Loafer Flat", 
        bullet:[
            "100% Leather",
            "Imported",
            "Rubber sole",
            "Comfort Features: Ortholite Footbed, Smooth Textile Linings, Durable Rubber Outsole",
            "Loafer with Zipper Closure",
            "Premium Leather"
        ],
        description: "Clarks women Cora Giny: An upper made from full grain leather and a vibrant, printed textile elevates the Cora Giny casual slip-on style. A subtle zipper closure allows for an easy yet secure fit and, its Ultimate Comfort features include an Ortholite footbed that wicks away moisture and reduces the impact of each step.",
        category: "shoes",
        price: 46.95,
        quantity: 3
    )

    shoes12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/shoes/shoes12.jpg')
    shoes12.picture.attach( io: shoes12Image, filename:'shoes12.jpg')
    
    # books
    books1 = Product.create(
        title: "Mean Baby: A Memoir of Growing Up", 
        bullet:[
            "Selma Blair has played many roles: Ingenue in Cruel Intentions. Preppy ice queen in Legally Blonde. Muse to Karl Lagerfeld. Advocate for the multiple sclerosis community. But before all of that, Selma was known best as … a mean baby. In a memoir that is as wildly funny as it is emotionally shattering, Blair tells the captivating story of growing up and finding her truth",
            "\"Blair is a rebel, an artist, and it turns out: a writer.\" —Glennon Doyle, Author of the #1 New York Times Bestseller Untamed and Founder of Together Rising",
            "The first story Selma Blair Beitner ever heard about herself is that she was a mean, mean baby. With her mouth pulled in a perpetual snarl and a head so furry it had to be rubbed to make way for her forehead, Selma spent years living up to her terrible reputation: biting her sisters, lying spontaneously, getting drunk from Passover wine at the age of seven, and behaving dramatically so that she would be the center of attention.",
            "Although Selma went on to become a celebrated Hollywood actress and model, she could never quite shake the periods of darkness that overtook her, the certainty that there was a great mystery at the heart of her life. She often felt like her arms might be on fire, a sensation not unlike electric shocks, and she secretly drank to escape.",
            "Over the course of this beautiful and, at times, devasting memoir, Selma lays bare her addiction to alcohol, her devotion to her brilliant and complicated mother, and the moments she flirted with death. There is brutal violence, passionate love, true friendship, the gift of motherhood, and, finally, the surprising salvation of a multiple sclerosis diagnosis.",
            "In a voice that is powerfully original, fiercely intelligent, and full of hard-won wisdom, Selma Blair’s Mean Baby is a deeply human memoir and a true literary achievement."
        ],
        description: "An Amazon Best Book of May 2022: Selma Blair’s memoir is more than a gushy celebrity story of bright lights and glitzy parties. It’s a story about complicated mother-daughter relationships, how childhood interpretations of experiences can shape you, how the need for attention can drive you, how Hollywood kismet happens, and how the public platform it provides can be a force for good. Mean Baby will make you laugh out loud at moments that are at once deeply funny and deeply disquieting. Blair’s life is not all roses—booze entered her life at the age of seven and eating disorders and the darkness of depression is a constant—but she recounts the bittersweet events and details of her life with such specific clarity, honesty, and humor that it’s impossible to not fall under her spell in this page-turning memoir. —Al Woodworth, Amazon Editor --This text refers to the hardcover edition.",
        category: "books",
        price: 14.99,
        quantity: 3
    )

    books1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books1.jpg')
    books1.picture.attach( io: books1Image, filename:'books1.jpg')
    
    books2 = Product.create(
        title: "Hidden Pictures: A Novel", 
        bullet:[
            "I loved it.\" —Stephen King",
            "From Jason Rekulak, Edgar-nominated author of The Impossible Fortress, comes a wildly inventive spin on the classic horror story in Hidden Pictures, a supernatural thriller about a woman working as a nanny for a young boy with strange and disturbing secrets."
        ],
        description: "Jason Rekulak is the author of The Impossible Fortress, which was translated into 12 languages and was nominated for the Edgar Award. For many years, he was the publisher of Quirk Books, an independent press, where he acquired and edited multiple New York Times bestsellers. He lives in Philadelphia with his family. --This text refers to an alternate kindle_edition edition.",
        category: "books",
        price: 14.99,
        quantity: 0
    )

    books2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books2.jpg')
    books2.picture.attach( io: books2Image, filename:'books2.jpg')
    
    books3 = Product.create(
        title: "Such Big Dreams: A Novel", 
        bullet:[
            "A savvy former street child working at a law office in Mumbai fights for redemption and a chance to live life on her own terms in this \"smart, haunting, and compulsively readable\" (Amy Jones, author of We’re All in This Together) debut novel about fortune and survival.",
            "\"A page-turner of a story that doesn’t shy away from exploring hard and painful truths about the way people navigate the systemic conditions of society.\"—Zalika Reid-Benta, author of Frying Plantain"
        ],
        description: "Reema Patel holds a BA from McGill University and a JD from the University of Windsor. After working in Mumbai in the youth non-profit sector and in human-rights advocacy, she has spent the past ten years working in provincial and municipal government. An excerpt from Such Big Dreams, her first novel, won the Penguin Random House Student Award for Fiction at the University of Toronto’s School of Continuing Studies. She lives in Toronto, where she currently works as a lawyer. --This text refers to the hardcover edition.",
        category: "books",
        price: 13.99,
        quantity: 0
    )

    books3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books3.jpg')
    books3.picture.attach( io: books3Image, filename:'books3.jpg')
    
    books4 = Product.create(
        title: "Family of Liars: The Prequel to We Were Liars", 
        bullet:[
            "The thrilling prequel to the TikTok phenomenon and #1 New York Times bestseller We Were Liars takes readers back to the story of another summer, another generation, and the secrets that will haunt them for decades to come."
        ],
        description: "E. Lockhart is the author of the #1 New York Times bestseller We Were Liars. She also invented a superhero for DC Comics. Her books include Whistle: A New Gotham City Hero; Again Again;The Disreputable History of Frankie Landau-Banks, a National Book Award Finalist and a Printz Honor Book; and Genuine Fraud, a New York Times bestseller and a finalist for the LA Times Book Prize. --This text refers to an alternate kindle_edition edition.",
        category: "books",
        price: 10.99,
        quantity: 0
    )

    books4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books4.jpg')
    books4.picture.attach( io: books4Image, filename:'books4.jpg')
    
    books5 = Product.create(
        title: "Siren Queen", 
        bullet:[
            "From award-winning author Nghi Vo comes a dazzling new novel where immortality is just a casting call away",
            "An Indie Next Pick!",
            "A LibraryReads Top Ten Pick!",
            "A Best of May Pick by Amazon | Apple Books | B&N Booksellers | LibraryReads | TIME Magazine | The Philadelphia Inquirer | Publishers Weekly | Buzzfeed | Chicago Review of Books | LitHub | BookRiot | Paste Magazine | Bookish | The Mary Sue",
            "A Most Anticipated in 2022 Pick for The Washington Post | Polygon | PopSugar | Bustle | Ms Magazine | Autostraddle"
        ],
        description: "Nghi Vo is the author of the novels Siren Queen and The Chosen and the Beautiful, as well as the acclaimed novellas When the Tiger Came Down the Mountain and The Empress of Salt and Fortune, a Locus and Ignyte Award finalist and the winner of the Crawford Award and the Hugo Award. Born in Illinois, she now lives on the shores of Lake Michigan. She believes in the ritual of lipstick, the power of stories, and the right to change your mind. --This text refers to the hardcover edition.",
        category: "books",
        price: 13.99,
        quantity: 3
    )

    books5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books5.jpg')
    books5.picture.attach( io: books5Image, filename:'books5.jpg')
    
    books6 = Product.create(
        title: "Finding Me: A Memoir", 
        bullet:[
            "OPRAH’S BOOK CLUB PICK • A HARPERS BAZAAR BEST BOOK OF 2022 • A PARADE MOST ANTICIPATED BOOK • A MARIE CLAIRE MOST ANTICIPATED BOOK"
        ],
        description: "VIOLA DAVIS is an internationally acclaimed actress and producer, known for her exceptional performances in television shows like 'How to Get Away with Murder' and movies like 'Fences' and 'The Help.' She is the winner of an Academy Award, an Emmy Award, and two Tony Awards, and in 2021 she won a Screen Actors Guild award for her role in 'Ma Rainey's Black Bottom'. In both 2012 and 2017, Time magazine named her one of the 100 most influential people in the world. Davis is also the founder and CEO of JuVee Productions, an artist driven production company that develops and produces independent film, theater, television, and digital content.",
        category: "books",
        price: 14.99,
        quantity: 2
    )

    books6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books6.jpg')
    books6.picture.attach( io: books6Image, filename:'books6.jpg')
    
    books7 = Product.create(
        title: "Unmasked: My Life Solving America's Cold Cases", 
        bullet:[
            "**THE INSTANT NEW YORK TIMES BESTSELLER**",
            "From the detective who found the Golden State Killer, a memoir that \"grabs its reader in a stranglehold and proves more fascinating than fiction and darker than any noir narrative.\" (LA Magazine)"
        ],
        description: "Robin Gaby Fisher is a Pulitzer Prize winner and two-time finalist for feature writing. She is the author of the New York Times bestselling After the Fire. --This text refers to the hardcover edition.",
        category: "books",
        price: 14.99,
        quantity: 2
    )

    books7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books7.jpg')
    books7.picture.attach( io: books7Image, filename:'books7.jpg')
    
    books8 = Product.create(
        title: "The Year of the Horses: A Memoir", 
        bullet:[
            "As seen on The Today Show",
            "A Good Morning America, Vanity Fair, NYLON and PureWow Best Book of May and a Publishers Weekly Best Book of Summer",
            "A Most Anticipated Book of 2022 at The Millions, LitHub, and The Rumpus",
            "Sharp, heartfelt, and cathartic, The Year of the Horses captures a woman’s journey out of depression and the horses that guide her, physically and emotionally, on a new path forward."
        ],
        description: "Courtney Maum is the author of the novels Costalegre; Touch; and I Am Having So Much Fun Here Without You; and a guide for writers, Before and After the Book Deal. Her writing and essays have been widely published in such outlets as The New York Times; O, the Oprah Magazine; Interview Magazine; and Modern Loss. She lives in Litchfield County, Connecticut, where she founded the learning collaborative The Cabins. --This text refers to the hardcover edition.",
        category: "books",
        price: 14.99,
        quantity: 0
    )

    books8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books8.jpg')
    books8.picture.attach( io: books8Image, filename:'books8.jpg')

    books9 = Product.create(
        title: "I'll Show Myself Out: Essays on Midlife and Motherhood", 
        bullet:[
            "The eagerly anticipated second essay collection from Jessi Klein, author of the acclaimed New York Times bestselling debut You’ll Grow Out of It.",
            "In New York Times bestselling author and Emmy Award-winning writer and producer Jessi Klein’s second collection, she hilariously explodes the cultural myths and impossible expectations around motherhood and explore the humiliations, poignancies, and possibilities of midlife.",
            "In interconnected essays like \"Listening to Beyoncé in the Parking Lot of Party City,\" \"Your Husband Will Remarry Five Minutes After You Die,\" \"Eulogy for My Feet,\" and \"An Open Love Letter to Nate Berkus and Jeremiah Brent,\" Klein explores this stage of life in all its cruel ironies, joyous moments, and bittersweetness.",
            "Written with Klein’s signature candor and humanity, I'll Show Myself Out is an incisive, moving, and often uproarious collection."
        ],
        description: "Jessi Klein is the author of You'll Grow Out of It and the Emmy and Peabody award-winning head writer and an executive producer of Comedy Central's critically acclaimed series Inside Amy Schumer. She is an actor and consulting producer on the hit Netflix show Big Mouth, and has also written for Netflix's Dead to Me and Amazon's Transparent as well as Saturday Night Live. Klein has been featured on the popular storytelling series The Moth, and has been a regular panelist on NPR's Wait Wait...Don't Tell Me! Her work has been published in the New York Times, the New Yorker, GQ, and Cosmopolitan, and she has her own half-hour Comedy Central stand-up special. She lives in Los Angeles with her family. --This text refers to the audioCD edition.",
        category: "books",
        price: 13.99,
        quantity: 0
    )

    books9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books9.jpg')
    books9.picture.attach( io: books9Image, filename:'books9.jpg')
    
    books10 = Product.create(
        title: "The Puzzler: One Man's Quest to Solve the Most Baffling Puzzles Ever, from Crosswords to Jigsaws to the Meaning of Life", 
        bullet:[
            "The New York Times bestselling author of The Year of Living Biblically goes on a rollicking journey to understand the enduring power of puzzles: why we love them, what they do to our brains, and how they can improve our world.",
            "\"Even though I’ve never attempted the New York Times crossword puzzle or solved the Rubik’s Cube, I couldn’t put down The Puzzler.\"—Gretchen Rubin, author of The Happiness Project and Better Than Before",
            "*NO PURCHASE NECESSARY. U.S. Residents, 18+. Ends May 3, 2023. Additional terms and conditions may apply. See book for details."
        ],
        description: "A.J. Jacobs is a journalist, lecturer, and human guinea pig who has written four bestselling books—including Drop Dead Healthy and The Year of Living Biblically—that blend memoir, science, humor, and a dash of self-help. A contributor to NPR, The New York Times, and Esquire, among other media outlets, Jacobs lives in New York City with his family. He was once the answer to 1-Down in the New York Times crossword puzzle. --This text refers to the hardcover edition.",
        category: "books",
        price: 13.99,
        quantity: 3
    )

    books10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books10.jpg')
    books10.picture.attach( io: books10Image, filename:'books10.jpg')
    
    books11 = Product.create(
        title: "Skandar and the Unicorn Thief", 
        bullet:[
            "Soar into a breathtaking world of heroes and unicorns as you’ve never seen them before in this fantastical middle grade debut perfect for fans of the Percy Jackson and Eragon series!",
            "Skandar Smith has always yearned to leave the Mainland and escape to the secretive Island, where wild unicorns roam free. He’s spent years studying for his Hatchery exam, the annual test that selects a handful of Mainlander thirteen-year-olds to train to become unicorn riders. But on the day of Skandar’s exam, things go horribly wrong, and his hopes are shattered…until a mysterious figure knocks on his door at midnight, bearing a message: the Island is in peril and Skandar must answer its call.",
            "Skandar is thrust into a world of epic sky battles, dangerous clashes with wild unicorns, and rumors of a shadowy villain amassing a unicorn army. And the closer Skandar grows to his newfound friends and community of riders, the harder it becomes to keep his secrets—especially when he discovers their lives may all be in graver danger than he ever imagined."
        ],
        description: "A.F. Steadman grew up in the Kent countryside, getting lost in fantasy worlds and scribbling stories in notebooks. Before focusing on writing, she worked in law, until she realized that there wasn’t nearly enough magic involved. Skandar and the Unicorn Thief is her debut novel.",
        category: "books",
        price: 10.99,
        quantity: 3
    )

    books11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books11.jpg')
    books11.picture.attach( io: books11Image, filename:'books11.jpg')
    
    books12 = Product.create(
        title: "The Marlow Murder Club: A Novel", 
        bullet:[
            "\"An absolute joy to read. Funny, entertaining, and beautifully written.\" —B. A. Paris, New York Times bestselling author",
            "A delightfully clever new mystery from creator of BBC One's hilarious murder mystery series Death in Paradise"
        ],
        description: "\"A hugely enjoyable murder mystery written with wonderful verve, humour and compassion. Utterly delightful.\" ― Robert Webb --This text refers to the paperback edition.",
        category: "books",
        price: 8.49,
        quantity: 0
    )

    books12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/books/books12.jpg')
    books12.picture.attach( io: books12Image, filename:'books12.jpg')
    
    #electronics
    electronics1 = Product.create(
        title: "Mounting Dream TV Mount Fixed for Most 26-55 Inch LED, LCD and Plasma TV, TV Wall Mount TV Bracket up to VESA 400x400mm and 100 LBS Loading Capacity, Low Profile and Space Saving Flat Mount MD2361-K", 
        bullet:[
            "[ Universal TV Mount ] Fixed TV wall mount designed for most 26-55\" flat screen or curved TVs up to 100 LBS. Basic TV mount working with TV/Monitor VESA from 75x75mm to 400x400mm, like general 26, 32, 42, 43, 50, 55 inches Samsung/TCL/LG/Sony/Vizio/Insignia LCD, LED, OLED TVs. Flat TV mount bracket can be installed on 12\", 16'' spacing stud, or brick/concrete wall. Also ok to work as monitor mount. (Concrete anchors sent separately per request). Search MD2361-32 for 24\"/32\" stud spacing.",
            "[ Low Profile TV Wall Mount ] Narrow gap between this TV bracket and the wall, 1.1\" in number, very much of an ultra slim TV mount. Flush TV mount saving space with super sleek look, blending TVs in with any décor.",
            "[ Heavy Duty TV Hanger ] TV mounting bracket with solidly one-piece wall plate, ok to hold TVs up to 100 LBS. Wall mount bracket for TV by advanced auto-welding robot, shaped without any potential human error. (Note: this TV Mount is NOT for drywall alone installation) Search MD2163-K for heavyweights, bigger version of MD2361-K flush wall mount.",
            "[ Easy Wall Mount ] Combined pre-labeled Hardware kit with clear instruction and bubble level, mounting TV brackets in less than 30 minutes. Classic pulling straps lock design for TV quick release or locking. Search MD2351 for an even easier one, a small TV mount.",
            "[ Responsive Customer Service ] US based customer support is always online to provide you with pre-sale & after-sale support as well as consulting service on mounting bracket use and TV holder installation."
        ],
        description: "About Mounting Dream. With more than 20 years of production and design, Mounting Dream is dedicated to quality and affordable TV accessories, like universal TV mounts, TV stand, soundbar brackets, lockable TV mount for RV camper, TV covers, speaker stands and etc. We believe, customer is always the key to every design, and so far, we have served millions of families. The number is still growing. We value every voice of you! Take it and enjoy your TV shows! Mounting Dream, your reliable and simple mounting choice!",
        category: "electronics",
        price: 18.69,
        quantity: 2
    )

    electronics1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics1.jpg')
    electronics1.picture.attach( io: electronics1Image, filename:'electronics1.jpg')
    
    electronics2 = Product.create(
        title: "iOttie Easy One Touch 5 Dashboard & Windshield Universal Car Mount Phone Holder Desk Stand for iPhone, Samsung, Moto, Huawei, Nokia, LG, Smartphones", 
        bullet:[
            "EASY ONE TOUCH MECHANISM: Press the locking side arms with a quick one-handed motion, and place your phone against the trigger button. The mount’s arms will close automatically, holding your device securely while you drive. Mount or remove your phone in seconds with the patented Easy One Touch Mechanism.",
            "WIDE COMPATIBILITY: New larger Easy One Touch button, with a universal cradle that fits smartphones and cases of any size.",
            "MAGNETIC CORD ORGANIZER: Keep charging cables neatly organized with the magnetic tab located near the bottom foot",
            "TELESCOPIC ARM: The improved telescopic arm now extends from 5 inches to 8 inches (as opposed to the Easy One Touch 4 which only extended to 6.5inch) and pivots 260 degrees. This enables a myriad of customized viewing angles while you’re on the road.",
            "ADJUSTABLE BOTTOM FOOT: You can easily and securely adjust the bottom foot by squeezing the spring button."
        ],
        description: "The Easy One Touch 5 Dash and Windshield Mount is the next generation top car mount in the U.S. Featuring the Patented Easy One Touch Mechanism, you can lock and release smartphones quickly with a one handed motion. Recognized for superior quality and sleek design, the new Easy One Touch 5 series features a new finish that complements modern automotive interiors.",
        category: "electronics",
        price: 24.95,
        quantity: 0
    )

    electronics2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics2.jpg')
    electronics2.picture.attach( io: electronics2Image, filename:'electronics2.jpg')

    electronics3 = Product.create(
        title: "JBL Go 3: Portable Speaker with Bluetooth, Built-in Battery, Waterproof and Dustproof Feature - Black", 
        bullet:[
            "JBL Pro Sound delivers surprisingly big audio and punchy bass from Go 3’s ultra-compact size.",
            "JBL Go 3’s ultra-portable design goes great with the latest styles, and its design make it look as great as it sounds.",
            "JBL Go 3 is IP67 waterproof and dustproof, so you can bring your speaker anywhere.",
            "Wirelessly stream music from your phone, tablet, or any other Bluetooth-enabled device.",
            "JBL Go 3 gives you up to 5 hours of playtime on a single charge."
        ],
        description: "JBL Go 3 features bold styling and rich JBL Pro Sound. With its new eye-catching edgy design, colorful fabrics and expressive details this a must-have accessory for your next outing. Your tunes will lift you up with JBL Pro Sound, it’s IP67 waterproof and dustproof so you can keep listening rain or shine, and with its integrated loop, you can carry it anywhere. Go 3 comes in completely new shades and color combinations inspired by current street fashion. JBL Go 3 looks as vivid as it sounds.",
        category: "electronics",
        price: 29.95,
        quantity: 1
    )

    electronics3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics3.jpg')
    electronics3.picture.attach( io: electronics3Image, filename:'electronics3.jpg')
    
    electronics4 = Product.create(
        title: "Wyze Cam v3 with Color Night Vision, Wired 1080p HD Indoor/Outdoor Video Camera, 2-Way Audio, Works with Alexa, Google Assistant, and IFTTT", 
        bullet:[
            "Color night vision: An all-new Starlight Sensor records night time video in full, vivid color. The Starlight Sensor can see full color in environments up to 25x darker than traditional video cameras and the new f/1.6 aperture captures 2x more light.",
            "Indoor/Outdoor: Wyze Cam v3 is a wired video camera with an IP65 rating so you can confidently install it outside in the rain or inside in the kids’ room. Wyze Outdoor Power Adapter (sold separately) required for outdoor use. Phone Compatibility - Android 5.0+, iOS 9.0+.",
            "Motion & Sound detection: Wyze Cam records video when motion or sound is detected and sends an alert straight to your phone. Motion Detection Zones and custom settings allow you to adjust the sensitivity of detection or turn it off completely.",
            "24/7 Continuous Recording: Continuous video recording with a 32GB MicroSD card (sold separately). Just insert the MicroSD into the base of the Wyze Cam and you’re all set.",
            "IFTTT certified connect all of your different apps and devices. When you sign up for a free account, you can enable your apps and devices to work together."
        ],
        description: "Cam v3 is the 3rd generation of Wyze’s flagship camera, Wyze Cam. Like its predecessor Wyze Cam v3 lets you see and record 1080p video right from the Wyze mobile app. New to Wyze Cam v3 is its waterproof design allowing for outdoor installation with an IP65 rating. Wyze Cam v3 also takes advantage of an all-new Starlight Sensor which allows for extreme low-light performance and shows great detail in the dark. With Wyze Cam v3's color night viewing, night time video recording appears as if it’s day time.",
        category: "electronics",
        price: 35.98,
        quantity: 8
    )

    electronics4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics4.jpg')
    electronics4.picture.attach( io: electronics4Image, filename:'electronics4.jpg')
    
    electronics5 = Product.create(
        title: "Fujifilm QuickSnap Flash 400 Disposable 35mm Camera (Pack of 2)", 
        bullet:[
            "Disposable One-time-use camera in compact body",
            "Very sharp pictures with a 10-foot built-in flash",
            "Fun and easy to use",
            "Great for taking pictures indoors or outdoors",
            "Loaded with Superior X-TRA 400 film, 27 exposures"
        ],
        description: "Fujifilm QuickSnap Flash 400 Disposable 35mm Camera (Pack of 2)",
        category: "electronics",
        price: 38.00,
        quantity: 2
    )

    electronics5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics5.jpg')
    electronics5.picture.attach( io: electronics5Image, filename:'electronics5.jpg')
    
    electronics6 = Product.create(
        title: "House of Marley Get Together: Portable Speaker with Wireless Bluetooth Connectivity, 8 Hours of Indoor/Outdoor Playtime, and Sustainable Materials, Signature Black", 
        bullet:[
            "SUPERIOR SOUND: Fill your space with high-performance, balanced audio with our portable Get Together speaker. Featuring 3.5\" Woofers, 1\" Tweeters, and a passive radiator, experience vibrant and crisp details from your favorite songs.",
            "RECHARGEABLE & COMPATIBLE: Enjoy a continuous 8 hours of playtime from the powerful and rechargeable battery for all-day listening. The advanced Bluetooth technology allows your device to be up to 98 feet away from the speaker while still maintaining connection. Compatible with IOS and Android, you’ll experience that classic Marley sound no matter how you connect.",
            "CONVENIENT FEATURES: Get Together offers a built-in microphone so you can use it as a speaker phone to take or make calls, making it great for your home office. Additionally, an auxiliary input jack allows you to connect it to record players, TVs and other audio devices. This speaker also features a USB port that allows you to charge your phone or other USB devices at home or on the road.",
            "SUSTAINABLE MATERIALS: Embrace your natural style with Marley’s message of craftsmanship and sustainability. Our wireless speakers are designed with solid bamboo, our eco-friendly REWIND fabric, and delivered in 100% recyclable packaging.",
            "HOUSE OF MARLEY: House of Marley is built on the principles of superior quality, sustainability, and a commitment to charitable causes. We are driven to enhance lives through great product experiences as well as using proceeds to support global reforestation and ocean conservation."
        ],
        description: "Wirelessly stream music with the Get Together Bluetooth Portable Audio System. The built-in rechargeable battery, Bluetooth, and convenient 3.5 millimeter input make it simple and easy to connect hundreds of devices and fire up your tunes whenever and wherever you need them. The exclusive REWIND fabric cover and natural bamboo front and back panels are beautiful and sustainable.",
        category: "electronics",
        price: 199.99,
        quantity: 8
    )

    electronics6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics6.jpg')
    electronics6.picture.attach( io: electronics6Image, filename:'electronics6.jpg')
    
    electronics7 = Product.create(
        title: "Motorola T100 Talkabout Radio, 2 Pack", 
        bullet:[
            "Call Tones: A call tone is what people calling you can hear instead of the normal default ring. It grabs the attention of your family and friends before you start speaking.",
            "Quickly Find a Channel: Use the scanning feature to see which channels are currently in use.",
            "Flashing Low Battery Alert: Low battery alert reminds you when batteries are running low.",
            "Keypad Lock: Keypad lock prevents your personalized settings from being inadvertently changed."
        ],
        description: "Keeping The Family Together. Simple, Compact And Easy-To-Use By The Entire Family, The T100 Is The Perfect Way To Stay In Touch When Out And About, Whether At The Playground, Hiking In The Park Or Enjoying A Picnic. This Colorful Two-Way Radio Has A Range Of Up To 16 Miles And Features 22 Channels, Providing You With Just What You Need To Instantly Reach Your Family And Friends, And Know They’Re Safe. The T100 Is Available In A Twin-Pack Or Triple-Pack. How Far Can I Expect My Radios To Communicate? The Communication Range Quoted Is Calculated Based On An Unobstructed Line Of Sight Test Under Optimum Conditions. Actual Range Will Vary Depending On Terrain And Conditions And Is Often Less Than The Maximum Possible. Your Actual Range Will Be Limited By Several Factors Including, But Not Limited To Terrain, Weather Conditions, Electromagnetic Interference, And Obstructions. Battery Life Depends On Factors Such As Device Usage Frequency And Load, Os Error, Usability Capacity/Battery Capacity, And Cellular Signal",
        category: "electronics",
        price: 29.99,
        quantity: 3
    )

    electronics7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics7.jpg')
    electronics7.picture.attach( io: electronics7Image, filename:'electronics7.jpg')
    
    electronics8 = Product.create(
        title: "TCL 32-inch 1080p Roku Smart LED TV - 32S327, 2019 Model", 
        bullet:[
            "Easy Voice Control: Works with Amazon Alexa or Google Assistant to help you find movie titles, launch or change channels, even switch inputs, using just your voice. Also available through the Roku mobile app",
            "Smart Functionality offers access to over 5,000 streaming channels featuring more than 500,000 movies and TV episodes via Roku TV",
            "1080p Full HD Resolution excellent detail, color, and contrast. Wireless Connection: 802.11 2x2 Dual Band",
            "Direct-lit LED produces great picture quality with 60Hz refresh rate for fast moving action scenes with virtually no motion blur. Screw Size : M4 x 8",
            "Inputs: 3 HDMI, 1 USB, RF, Composite, Headphone Jack, optical audio out"
        ],
        description: "32-Inch class HD Roku Smart TV. Roku TV personalized home screen. Dual-band 802.11n wireless. 3 HDMI inputs, analog video input, USB port, digital and analog audio output. Digital television tuner. 1080P resolution. 60Hz CMI. USB File Format Compatibility : Video: MKV (H.264), MP4, MOV (H.264), TS (H.264) Music: AAC, MP3, WMA, WAV (PCM), AIFF, FLAC, AC3 Photo: JPG, PNG, GIF Wireless Connection : 802.11 2x2 Dual Band",
        category: "electronics",
        price: 168.00,
        quantity: 2
    )

    electronics8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics8.jpg')
    electronics8.picture.attach( io: electronics8Image, filename:'electronics8.jpg')
    
    electronics9 = Product.create(
        title: "Rockville Package PA System Mixer/Amp+10\" Speakers+Stands+Mics+Bluetooth, (RPG2X10)", 
        bullet:[
            "Rockville RPG2X10 800 Watt Complete PA System Package With Mixer/Amp, 2 10\" Speakers, Stands + Wired Microphones and Bluetooth Connectivity",
            "Rockville RPG2X10 V2 Package PA System Mixer/Amp+10 inches. Speakers+Stands+Mics+Bluetooth. PA system with 4-channel powered mixer.",
            "Complete portable Pro DJ system. Compact and light weight system delivers distortion free sound even at extreme SPL. Two collapsible speaker stands",
            "Speaker Dimensions: 15. 4 inches x 12. 2 inches x 21. 3 inches. Mixer dimensions: 18. 5 inches x 8. 7 inches x 5. 9 inches. Stand adjustable height: 27. 2 inches - 55. 1 inches",
            "Box 1 Contents: (2) speakers, (2) stands, (2) microphones, (2) speaker cables. Box 1 Dimensions: 32. 1 inches x 14. 2 inches x 28. 3 inches. Box 2 Contents: (1) mixer. Box 2 Dimensions: 21. 5 inches x 11. 8 inches x 8. 9 inches"
        ],
        description: "Description of RPG2X10 V2: The RPG2X10 V2 is a very versatile and great sounding system. This is a complete system that includes (2) Speakers, a powered Mixer, (2) wired microphones, (2) stands, and all the cables you will need. This system is great because it is powerful and loud and has great sound while still being very portable. The system has 800 watts of peak output, 400 watts Program power, and 200 watts RMS. This system is loud enough for multiple applications. You can use this as a DJ system, in bars, auditoriums, schools, churches, karaoke, and more! What I love about this system is that it has a 4 channel mixer built in. This is the heart of the system. The mixer will give you full control over your sound. You can control your mic channels and your source volumes independently to get the exact sound you want! This mixer also has built in Bluetooth so you can easily transmit audio from your phone or Bluetooth MP3 player to the system. There is also an SD and USB for more listening options. We also added effects to this mixer to give you more customization options. This has reverb and digital delay on each channel. The mics we included with this system are our Rockville RMM-XLR mics. These are very rugged metal mics. They sound fabulous and have a great feel to them. We have seen brands that include cheap plastic mics in their systems. We spent the extra few dollars to include top of the line mics! We went with 10 inches speakers because it is the perfect combination of high power handling and portability. The speakers sound great. If you want an expandable and versatile complete system that has a lot of power and great sound quality, then we recommend you check out our RPG2X10 V2! .",
        category: "electronics",
        price: 399.95,
        quantity: 0
    )

    electronics9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics9.jpg')
    electronics9.picture.attach( io: electronics9Image, filename:'electronics9.jpg')
    
    electronics10 = Product.create(
        title: "Fender Fullerton Jazzmaster Ukulele - Olympic White", 
        bullet:[
            "Jazzmaster body shape",
            "4-in-line painted Jazzmaster headstock",
            "Fender-designed preamp system",
            "No-tie bridge",
            "Nickel hardware"
        ],
        description: "Tipping the hat to Fender’s iconic guitar body shapes, the Fullerton Series ukuleles are nothing short of electric. The Fullerton Jazzmaster departs from traditional ukulele construction and aesthetics, while remaining faithful to Fender’s history. The Jazzmaster ukulele’s pickguard, signature finish color options, and 4-in-line headstock can only be categorized as quintessentially Fender. The Fullerton Jazzmaster is the perfect choice for the ukulele player looking to inject the spirit of rock ’n roll into every performance.",
        category: "electronics",
        price: 209.99,
        quantity: 1
    )

    electronics10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics10.jpg')
    electronics10.picture.attach( io: electronics10Image, filename:'electronics10.jpg')
    
    electronics11 = Product.create(
        title: "Skullcandy Crusher Evo Wireless Over-Ear Headphone - Chill Grey", 
        bullet:[
            "Crusher Adjustable Sensory Bass",
            "Personal Sound customization via Skullcandy App",
            "40 hours of battery life",
            "Built-in Tile finding technology",
            "Call, track and volume controls"
        ],
        description: "Feel the bass in your bones with Crusher Evo — the latest advancement in the famous Skullcandy Crusher line. Patented Adjustable Sensory Bass technology is an experience that you can’t get in any other headphones. And now, you can even customize the sound to your unique hearing through a quick audio test in the Skullcandy App. So you’ll hear the music exactly the way it was meant to be heard. Critical controls — call, track change, volume, and Crusher Bass — are conveniently located with easy-to-use tactile buttons. Tile finding technology lets you \"ring\" your headphones if they’re ever lost or misplaced, so you’ll never return home without them. Rapid Charge capability provides 4 hours of listening time on just 10 minutes of charge, and a full charge lets you feel the music for an amazing 40 hours. Crusher Evo is also travel-ready. It folds flat to fit perfectly into the included travel case.",
        category: "electronics",
        price: 198.99,
        quantity: 0
    )

    electronics11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics11.jpg')
    electronics11.picture.attach( io: electronics11Image, filename:'electronics11.jpg')
    
    electronics12 = Product.create(
        title: "TechGround Wireless Keyboard and Mouse Combo, 2.4GHz Ultra Thin Full Size Wireless Keyboard Mouse Set for Laptop, PC, Desktop, Windows 7, 8, 10, Black and Silver", 
        bullet:[
            "Wireless Keyboard and Mouse Combo: You can work comfortably at home or office with this full-size wireless keyboard and precision wireless mouse. The keyboard and mouse separately need 2 x AAA batteries (not included).",
            "Stable 2.4GHz Wireless Connection: 2.4GHz wireless technology provides a powerful and reliable connection up to 33ft. Plug and play, no need to install any additional software. One Nano USB receiver can connect both the mouse and keyboard to your computer. (NOTE: The USB receiver is inserted on the battery compartment of the keyboard.)",
            "Comfortable Typing: The responsive scissor-switch keys let you enjoy comfortable, quiet and smooth typing. Full-size keyboard includes fast-access hot keys, versatile function keys and built-in numeric keypad.",
            "Adjustable DPI: You can easily adjust the sensitivity of the mouse between the 3 DPI levels (800/1200/1600). Optical laser provides more sensitivity, quicker response, more precise movement and smoother tracking on a wide range of surfaces.",
            "Universal Compatibility: The wireless keyboard mouse is perfectly compatible with Windows XP, Vista, 7, 8 and 10. It works well with laptop, PC, desktop, notebook, etc."
        ],
        description: "The Full Size Wireless Keyboard and Mouse Combo is perfect for home office or workplaceMuch Thinner, Much LighterThe keyboard weighs only 385g which maintains it a very sleek and elegant appearance.Plug & Play SetupJust use one nano receiver to wireless connect both keyboard and mouse to your computer, eliminating the hassle of multiple receivers, provides reliable wireless range of 33ft. compatible SystemsWindows 7, 8, 10, XP, Vista(Not compatible with Mac OS System)Specifications:Keyboard Dimensions: 17.13 x 4.8 x 0.6inchMouse Size: 4 x 2 x 0.8inchMouse DPI: 800, 1200, 1600Wake-up Method: Press any buttonPackage Contents1 x Wireless Keyboard1 x Wireless Mouse1 x USB Receiver (Inserted on the battery compartment of the keyboard)",
        category: "electronics",
        price: 18.99,
        quantity: 3
    )

    electronics12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/electronics/electronics12.jpg')
    electronics12.picture.attach( io: electronics12Image, filename:'electronics12.jpg')
    
    #Automotive Parts & Accessories
    automotive1 = Product.create(
        title: "Rain-X 5079272-2 Latitude 2-IN-1 Water Repellency Wiper Blade, 14\" (Pack of 1)", 
        bullet:[
            "Rain-X has made the wiper pairings for your vehicle. Please visit the Rain-X brand store by clicking the Blue link above and go to wiper blades, and Latitude Water Repellency Pairs to find your pair.",
            "Water repelling coating - Rain‑X water repelling formula is applied to the windshield by the wiper blades and lasts for months",
            "Now even easier to install - new and improved pre-installed universal adaptor installs within minutes and fits 96 percent of all vehicles. An aerodynamic spoiler prevents wind lift and delivers a quiet wipe",
            "Advanced, beam blade technology - contours to the curvature of the windshield for a smooth, virtually streak-free wipe and features a patented universal adapter for easy installation.",
            "Ultimate all-weather performance - designed with a synthetic blend rubber squeegee to withstand extreme weather conditions and deliver longer lasting, superior wipe performance"
        ],
        description: "New Rain X-Latitude Water Repellency Wiper Blades deliver the proven wipe quality of Rain-X Latitude Blades, now with water repellency benefits for even better driving visibility. For the last 40 years, Rain‑X has provided drivers with products to help them outsmart the elements. All Rain‑X products are designed to help keep our customers a confident step ahead of Mother Nature on the road.",
        category: "automotive",
        price: 14.97,
        quantity: 9
    )

    automotive1Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive1.jpg')
    automotive1.picture.attach( io: automotive1Image, filename:'automotive1.jpg')
    
    automotive2 = Product.create(
        title: "Camco TastePure RV/Marine Water Filter with Flexible Hose Protector | Protects Against Bacteria | Reduces Bad Taste, Odors, Chlorine and Sediment in Drinking Water (40043)", 
        bullet:[
            "Safe Water Matters: GAC (Granular Activated Carbon) filtration greatly reduces bad taste, odor, chlorine, and sediment.; Large Capacity Filtration: Large capacity in line water filter lasts an average of 3 months",
            "Multiple Uses: Can be attached to any standard gardening or water hose to provide healthier drinking water and cleaner water overall. Great for RVs, boats, campers, pets, gardening, and much more",
            "20-Micron Sediment Filter: Removes particles greater than 20 microns; Protects Against Bacteria: Premium KDF provides protection against bacteria growth while filter is stored or not in use",
            "Includes: Flexible hose protector to reduce strain on connections while minimizing kinking",
            "Compliant with all Federal and State Level Lead-Free Laws: CSA lead-free content certified to NSF/ANSI 372"
        ],
        description: "Camco’s TastePURE RV/Marine Water Filter with Flexible Hose Protector reduces bad taste, odor, chlorine and sediment in drinking water with a 20 micron sediment filter. Also features GAC (Granular Activated Carbon) filtration in combination with KDF to prevent undesirable bacteria growth when the filter is not is use. Durable in line, exterior mount filter has a wide body for increased flow. Includes a flexible hose protector to reduce strain on the connections while minimizing kinking that could impede water flow. Not designed or tested with fish tanks or ponds. NSF 42/53 listed. CSA LLC (Low Lead Content) certified. Made in the USA.",
        category: "automotive",
        price: 18.27,
        quantity: 3
    )

    automotive2Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive2.jpg')
    automotive2.picture.attach( io: automotive2Image, filename:'automotive2.jpg')

    automotive3 = Product.create(
        title: "Amazon Basics Microfiber Cleaning Cloths, Non-Abrasive, Reusable and Washable - Pack of 24, 12 x16-Inch, Blue, White and Yellow", 
        bullet:[
            "Ultra soft, non-abrasive microfiber cleaning cloths will not scratch paints, vinyl, glass, finishes or other surfaces",
            "Effectively cleans either dry or with liquid cleaners for streak-free and lint-free results",
            "Absorbent cleaning cloths soak up eight times their own weight",
            "Pack comes with three different towel colors (blue, yellow, and white)",
            "Rinse and reuse the durable, washable cleaning cloths 100's of times"
        ],
        description: "Amazon Basics Microfiber Cleaning Cloths, Non-Abrasive, Reusable and Washable - Pack of 24, 12 x16-Inch, Blue, White and Yellow",
        category: "automotive",
        price: 13.89,
        quantity: 0
    )

    automotive3Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive3.jpg')
    automotive3.picture.attach( io: automotive3Image, filename:'automotive3.jpg')
    
    automotive4 = Product.create(
        title: "Camco 4ft TastePURE Drinking Water Hose - Lead and BPA Free, Reinforced for Maximum Kink Resistance, 1/2\"Inner Diameter (22763) , White", 
        bullet:[
            "Made with NSF certified hose; drinking water safe",
            "Reinforced for maximum kink resistance",
            "4 feet long x 1/2 inch ID",
            "Hose is made of PVC and is BPA free.Recommended Application Temperature: 50 90",
            "Compliant with all federal and state level low lead laws; CSA Low Lead Content Certified to NSF/ANSI 372.Pressure Rating: 40 PSI 70 PSI"
        ],
        description: "Camco's TastePURE 4' x 1/2\"ID Drinking Water Hoses are reinforced for maximum kink resistance. Especially useful when hooked with a Y-valve to your main faucet. Made with NSF certified hose; drinking water safe. Hose is made of PVC and is BPA free. CSA low lead content certified. Complies with California’s AB1953 and Vermont Act 193 Low Lead Laws.",
        category: "automotive",
        price: 9.72,
        quantity: 3
    )

    automotive4Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive4.jpg')
    automotive4.picture.attach( io: automotive4Image, filename:'automotive4.jpg')
        
    automotive5 = Product.create(
        title: "Chemical Guys SPI_109_16 Chemical Guys SPI_109_16 Leather Cleaner and Leather Conditioner Kit for Use on Leather Apparel, Furniture, Car Interiors, Shoes, Boots, Bags & More (2 - 16 fl oz Bottles)", 
        bullet:[
            "It’s not just for car seats & interiors: This kit works on all things leather, seats, interiors, jackets, shoes, sneakers, boots, sofas and more; Everyone has something leather in their home.",
            "Treat your leather like your hair & skin: We all wash our skin and hair on a regular basis, and use conditioners and lotions to keep out skin hydrated and fresh.",
            "PH Balanced: Leather cleaner is pH balanced for the most efficient cleaning and preserves the leather's strength, durability and appearance; Penetrates the pores of leather to lift and suspend dirt and oils",
            "Fast, Easy & Fun: No one \"loves to clean\", but if you are using products that make it fast and easy, it's certainly more fun both products are extremely easy to use, and leave no residue like soaps, nor will they contribute to fiber deterioration",
            "Keep your leather looking & smelling new: Leather cleaner is colorless and odorless and penetrates the pores of your leather to lift and remove dirt and oils, while leather conditioner, which has a subtle leather scent, contains Vitamin E to nourish your leather and help reduce UV damage"
        ],
        description: "The Leather Cleaner and Conditioner Complete Leather Care Kit will breathe new life into your leather. Achieve the natural look and feel of soft, fantastic leather with the Leather Cleaner and Conditioner. The Leather Cleaner and Conditioner are both OEM approved, and are colorless and odorless so they will assure the natural leather scent and color are left intact. Leather is absolutely stunning when it is treated and cared for properly. Cleaning and conditioning is very important to keep leather looking its best. Mistreated or neglected leather can result in dried, aged and cracked leather. Treat your leather right with Chemical Guys Leather Cleaners and Conditioners.",
        category: "automotive",
        price: 24.99,
        quantity: 3
    )

    automotive5Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive5.jpg')
    automotive5.picture.attach( io: automotive5Image, filename:'automotive5.jpg')
    
    automotive6 = Product.create(
        title: "BDK PolyPro Car Seat Covers Full Set in Beige on Black – Front and Rear Split Bench Car Seat Cover, Easy to Install, Interior Covers for Auto Truck Van SUV", 
        bullet:[
            "PROTECTS AGAINST STAINS – These are the perfect seat covers for your new car, or even a car that’s just new-to-you. Our car seat covers provide protection against spills and stains that might occur inside of your vehicle.",
            "BREATHABLE MATERIALS – We use specially selected materials for maximum comfort during your daily commute. The high-quality poly outer layer provides enhanced ventilation so that you stay cool and comfortable during your drive.Machine Washable Polyester Cloth with Foam Backing",
            "STYLISH DESIGN – Refresh the look of your vehicle and turn some heads along the way. This full set of seat covers features a stylish two-tone design with stitched accents, making it easy to add a splash of color to your interior.",
            "EASY TO INSTALL – The best investment for your new vehicle might also be the quickest. Follow our simple 3-step installation process to install the front seat covers before finishing off with the rear bench seat cover and headrest covers.",
            "UNIVERSAL FIT – Our seat covers are designed to fit most vehicles including cars, trucks, vans and SUVs. Please see our product images for fitment examples. Some additional work may be required to create a ‘perfect’ fit."
        ],
        description: "Add a layer of comfort & protection - package includes seat covers for front driver & passenger seats, rear bench cover. Premium \"Rome\" cloth material - feels like neoprene. Made for seats w/ Detachable headrests. Double stitched seams - toughest, durable & long lasting. 100% washable - breathable cloth prevents odors and dirt build up.",
        category: "automotive",
        price: 29.90,
        quantity: 0
    )

    automotive6Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive6.jpg')
    automotive6.picture.attach( io: automotive6Image, filename:'automotive6.jpg')
    
    automotive7 = Product.create(
        title: "Febreze Car Air Fresheners, Unstopables Paradise Scent, Odor Eliminator for Strong Odor, Car Vent Clips (3 Count)", 
        bullet:[
            "Eliminates trapped car odors with an irresistible scent",
            "Bring the vacation vibes home with the fruity, beachy scent of Paradise",
            "Easy to install: Click to activate, clip into vent, adjust scent level, and sniff on",
            "Adjust the scent intensity from low to high and explore your bold side",
            "Delivers even scent for up to 40 days (on low) with a fresh that works with your car’s airflow"
        ],
        description: "From soccer cleats to French fries, everyday odors get trapped in your car and follow you around town. Kick ’em to the curb and enhance your drive with some bold freshness. Febreze Unstopables CAR Vent Clips eliminate odors trapped in your car, minivan, or ice cream truck with an irresistible scent. These powerful but tiny car vent air fresheners have incredible odor blockers and odor eliminators that remove all those stinks and smells built up from your longest, commute-iest days. Simply push the vent clip firmly until you hear it click to activate fragrance, then clip onto your car vent and drive stink-free for up to a whole 40 days. Take your nose on a tropical vacation with the fruit-forward scent of Paradise... suntan not included. So, freshen up your ride and breathe happy. And if you’re looking for an explosion of scent at home, try Febreze Unstopables Touch Fabric Spray and get a burst of freshness with every touch.",
        category: "automotive",
        price: 9.99,
        quantity: 0
    )

    automotive7Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive7.jpg')
    automotive7.picture.attach( io: automotive7Image, filename:'automotive7.jpg')
    
    automotive8 = Product.create(
        title: "Fix-A-Flat S60420 Aerosol Emergency Flat Tire Repair and Inflator, for Standard Tires, Eco-Friendly Formula, Universal Fit for All Cars, 16 oz. (Pack of 1)", 
        bullet:[
            "Emergency flat tire repair solution, connect, inflate and go! The easiest and quickest way to temporarily repair a flat tire in an emergency",
            "Fix-a-Flat is designed to seal small tread tire punctures up to 1/4 of an inch in diameter in seconds and provide enough inflation to lift the rim off the ground. Now seals 33% larger punctures and has been trusted for 50 years",
            "Flats happen, so be prepared with Fix-a-Flat, an easy-to-use, better alternative to the spare tire and perfect for roadside emergencies. This 16 oz can is perfect for standard tires",
            "With its eco-friendly formula, Fix-a-Flat is safe for the user, the tire and the environment. The old plastic cap has been tossed and replaced with a modern Performance Top, making Fix-a-Flat even more eco-friendly and easier to use",
            "No need for a jack, tools, or a spare tire and TPMS (Tire Sensor) safe, store in the trunk of your car and get your tire professionally repaired in 3 days or after 100 miles"
        ],
        description: "Fix-A-Flat Aerosol Tire Inflators Seal Punctures And Inflate The Tire In Seconds Without The Need For A Jack, Spare Tire, Or Any Tools, Allowing You To Get Off The Road And To A Service Station Where An Approved Repair Can Be Made. This Non-Flammable Formula Is Easy And Safe To Use, And Cleans Up Easily With Water. Fix-A-Flat Aerosol Tire Inflators Are The Cheapest And Quickest Way To Repair A Flat Tire In An Emergency. Fix-A-Flat Aerosol Tire Inflators Are Designed To Seal Small Tire Punctures And Provide Enough Inflation To Lift The Rim Off The Ground.",
        category: "automotive",
        price: 8.27,
        quantity: 1
    )

    automotive8Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive8.jpg')
    automotive8.picture.attach( io: automotive8Image, filename:'automotive8.jpg')
    
    automotive9 = Product.create(
        title: "Muc Off - 250US 8 in 1 Bicycle Cleaning Kit , Black", 
        bullet:[
            "THE ULTIMATE GIFT: The Muc-Off 8 in 1 Kit is the perfect gift for any bike fanatic. We’ve bundled together a selection of our best products to clean and protect your bike.",
            "CLEAN YOUR BIKE: Step One in our three-step bicycle care program is Clean and we’ve got you covered with this kit that includes a bottle of our infamous pink Nano Tech Bike Cleaner.",
            "PROTECT YOUR BIKE: Often overlooked, Step Two is not one that you should be skipping. Protect your ride post-wash with Muc-Off Bike Protect – the ultimate liquid bike protection!",
            "BIKE CLEANING TOOLS: We’ve also included an assortment of our bike cleaning brushes, as well as a sponge, so that you can get started straight out of the box.",
            "SUITABLE FOR ALL TYPES OF BIKE: Whether you prefer to hit the road or shred the trails on your MTB, the Muc-Off 8 in 1 Kit is an essential for your post-ride clean up."
        ],
        description: "The Muc-Off 8 in 1 Bicycle Cleaning Kit covers all the bases when it comes to cleaning and protecting your bike. This kit isn't style specific either with all the essentials for Road, Cyclocross, MTB and the daily commute so it makes for the perfect gift for any bike fanatic! This mega bike cleaning kit comes packed with some of the best Muc-Off essentials. We’ve included a bottle of our infamous pink Muc-Off Bike Cleaner that will shred all manner of dirt from your ride in no time at all. The formula for our award-winning bike cleaner spray is biodegradable and uses state-of-the-art Nano Technology to break down grime on microscopic levels – it really is the most effective bike wash out there! To keep your clean ride looking factory fresh, we’ve also thrown in a can of Muc-Off Bike Protect – the ultimate liquid bicycle protection! Bike Protect’s incredible water dispersing action and high oil content makes it a perfect post bike wash anti-corrosion spray that will leave a sparkling, non-sticky layer for high performance bike frame protection. As if that wasn’t enough, we’ve also included a selection of tools to help make light work of bike cleaning. The Muc-Off 8 in 1 Bicycle Cleaning Kit contains four of our best Muc-Off brushes, a nifty Expanding Microcell Sponge and all of this comes jam-packed into a handy storage tub that can also be used as a parts washer and water bucket mid-clean.*To maintain performance of all bike cleaning brushes, avoid use with boiling water and on hot parts. We recommend using warm water and allowing all hot parts to cool before use.",
        category: "automotive",
        price: 69.95,
        quantity: 4
    )

    automotive9Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive9.jpg')
    automotive9.picture.attach( io: automotive9Image, filename:'automotive9.jpg')
    
    automotive10 = Product.create(
        title: "Camco TST Ultra-Concentrated Orange Citrus Scent RV Toilet Treatment Drop-Ins, Formaldehyde Free, Breaks Down Waste And Tissue, Septic Tank Safe, 30-Pack (41183)", 
        bullet:[
            "Essential for RV Black Water Holding Tanks: Eliminates odors and helps break down waste and tissue in your RV's black water holding tank",
            "Ultra-Concentrated Formula: The toughest odor stopper; just one drop-in treats up to a 40-gallon tank",
            "Not Made with Bronopol: Does not contain the toxic, formaldehyde-releasing ingredient bronopol",
            "Safe for All Septic Tanks: Drop-Ins are RV and marine approved and are 100% biodegradable",
            "Great Smell: Fresh citrus scent"
        ],
        description: "Camco's TST Orange Drop-Ins help control unwanted odors and break down waste and tissue in your black water holding tank. The easy to use drop-ins contain an ultra-concentrated formula with a special chemical that helps break down waste and tissue. It also contains a blend of citrus-scented surfactant oils that trap unwanted odors in your tank, making your camping experience more enjoyable. The drop-ins are RV and marine approved, non-formaldehyde and safe for all septic tanks—they’re even great for portable camping toilets! Each container comes with 30 drop-ins.",
        category: "automotive",
        price: 19.54,
        quantity: 3
    )

    automotive10Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive10.jpg')
    automotive10.picture.attach( io: automotive10Image, filename:'automotive10.jpg')
    
    automotive11 = Product.create(
        title: "Camco Rhino Heavy Duty 21 Gallon Portable Waste Holding Hose and Accessories-Durable Leak Free and Odorless RV Tote Tank (39002) , Gray", 
        bullet:[
            "Transports Waste from Your RV/Trailer: Allows you to transport waste from your RV or trailer to a dump station; Ideal for when you're parked too far away for an RV sewer hose",
            "Includes: (1) 21 gallon tote tank, (1) large, durable handle, (2) oversized wheels, (1) tank rinser, (1) ladder hook, (1) 3-foot, super heavy-duty sewer hose with swivel bayonet and lug fittings, (1) 15-inch female to female orange Rhino grey water hose, (1) clear elbow with a 4-in-1 adapter, (1) clear double bayonet elbow, (3) storage caps, (2) caps with lanyards for rinse connections and (1) steel tow adapter Easy to Transport: Large, heavy-duty, no-flat wheels with bearings make transport smooth and effortless. A removable steel tow adapter allows you to easily roll the tote tank like a suitcase, or tow it slowly behind a truck or golf cart; Integrated Ladder Hook: Can sturdily clamp on to RV or camper ladder when not in use and the body of the tote tank features grooves to securely strap it in place",
            "Simple to Clean: The low drain hole ensures that the tote tank empties completely. The smooth interior is easy to wash off using the integrated tank rinser",
            "Measurements: Tote tank measures 20 ½-inches (L) x 13-inches (W) x 40-inches (H); Minimum Waste Height Hook Up: 13-inches",
            "Durable Construction: Constructed of extremely durable blow-molded, UV stabilized HDPE that won’t leak or deteriorate in the sun; Weight: 34 ½ lb.; Made in the USA; Patented"
        ],
        description: "Portable waste holding tank is constructed of extremely durable blow molded, UV stabilized HDPE that won't leak or deteriorate in the sun. Ready to use kit includes everything needed to transport waste from your RV or trailer to a dump station when you’re parked too far away for an RV sewer hose. Kit includes accessories to clean, maintain and store the tote tank when not in use. Large, heavy duty, no flat wheels with bearings make transporting the tow tank smooth and effortless. The removable steel tow adapter allows you to easily roll the tote tank as you would with a suitcase or luggage. You can also transport it by towing it slowly behind a golf cart or truck.",
        category: "automotive",
        price: 153.72,
        quantity: 3
    )

    automotive11Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive11.jpg')
    automotive11.picture.attach( io: automotive11Image, filename:'automotive11.jpg')
    
    automotive12 = Product.create(
        title: "Unique RV Digest-It Black Tank Treatment - Concentrated Drop-in Pod Toilet Treatment - Eliminates Odors, Breaks Down Waste (20 Treatments) - 41G-4", 
        bullet:[
            "RV Digest-It eliminates toilet and black tank odors. Extra strength bio-enzymatic cleaners eliminate awful camper sewer smell at its source without covering or masking it with perfumes. No more porta potty smells in your RV black tank!",
            "Breaks down human waste and all brands of toilet paper in your black tank. Prevents clogs and waste buildup. Makes dumping easier and more effective. Works in gray tanks too.",
            "Advanced drop-in pods dissolve completely inside tanks--no partially dissolved pods to get stuck.",
            "Concentrated RV sewer treatment for your RV holding tank. Recognized as the strongest combination treatment: odor eliminator and waste liquefier. Our formula contains billions of activated bio-enzymatic cleaners per treatment.",
            "Contains no formaldehyde or bronopol. Safe for septic tank and sewer cleanouts. Made in the USA. Complies with all state dumping laws. This RV black water tank treatment is trusted by thousands of daily users."
        ],
        description: "Ensure your holding tank is free of clogs and odors with formaldehyde-free RV Digest-It Drop-In Pods. Our highly concentrated, proprietary blend of bio-enzymatic cleaners will maintain clean sensors, eliminate odors, and liquefy the solids in your tank, ensuring no backups.",
        category: "automotive",
        price: 25.99,
        quantity: 2
    )

    automotive12Image = open('https://niles-product-seeds.s3.us-west-1.amazonaws.com/products/automotive/automotive12.jpg')
    automotive12.picture.attach( io: automotive12Image, filename:'automotive12.jpg')
    
    review1 = Review.create(
        user_id: 1,
        product_id: 1,
        rating: 5,
        comment: 'ths is a good product',
        header: 'solid product'
    )
    review2 = Review.create(
        user_id: 2,
        product_id: 2,
        rating: 2,
        comment: 'Such shot, many gradient, so magnificent',
        header: 'do not purchase'
    ) 
    review3 = Review.create(
        user_id: 3,
        product_id: 3,
        rating: 3,
        comment: 'This should be nominated for service of the year. You wont regret it.',
        header: 'average at best'
    ) 
    review4 = Review.create(
        user_id: 4,
        product_id: 4,
        rating: 4,
        comment: 'Its really wonderful. This is the most valuable business resource we have EVER purchased. This is awesome!',
        header: 'pretty good product'
    ) 
    review5 = Review.create(
        user_id: 5,
        product_id: 4,
        rating: 5,
        comment: 'It\'s incredible. I would like to personally thank you for your outstanding product. This is exactly what our business has been lacking.',
        header: 'solid product woot!'
    ) 
    review6 = Review.create(
        user_id: 6,
        product_id: 4,
        rating: 1,
        comment: 'never again will i purchase this',
        header: 'worst product'
    ) 
    review7 = Review.create(
        user_id: 7,
        product_id: 5,
        rating: 2,
        comment: 'if you are a budget this prouct will last a week before it breaks',
        header: 'not my cup of tea product'
    ) 
    review8 = Review.create(
        user_id: 1,
        product_id: 6,
        rating: 3,
        comment: 'this was average at best.  would not repurchase this product',
        header: 'mediocore product'
    ) 
    review9 = Review.create(
        user_id: 2,
        product_id: 7,
        rating: 4,
        comment: 'not the best but the price point was too good to pass up',
        header: 'great product'
    ) 
    review10 = Review.create(
        user_id: 3,
        product_id: 8,
        rating: 5,
        comment: 'A++++++++++',
        header: 'great product'
    ) 
    review11 = Review.create(
        user_id: 4,
        product_id: 1,
        rating: 1,
        comment: 'do not buy fake review',
        header: 'scam product'
    ) 
    review12 = Review.create(
        user_id: 5,
        product_id: 2,
        rating: 2,
        comment: 'broke after a month of using it',
        header: 'not the best product'
    ) 
    review13 = Review.create(
        user_id: 6,
        product_id: 3,
        rating: 3,
        comment: 'C+++++++++++ at best',
        header: 'average product'
    ) 
    review14 = Review.create(
        user_id: 7,
        product_id: 4,
        rating: 4,
        comment: 'does the job and no complaints',
        header: 'not bad for the price point for this product'
    ) 
    review15 = Review.create(
        user_id: 1,
        product_id: 5,
        rating: 5,
        comment: 'best product on the market',
        header: 'A+ product'
    ) 
    review16 = Review.create(
        user_id: 2,
        product_id: 6,
        rating: 1,
        comment: 'buyers beware',
        header: 'lowsy'
    ) 
    review17 = Review.create(
        user_id: 3,
        product_id: 7,
        rating: 2,
        comment: 'i bought this because of the price point and now i regret it',
        header: 'stay away'
    ) 
    review18 = Review.create(
        user_id: 4,
        product_id: 8,
        rating: 3,
        comment: 'C product.  I would probably not rebuy',
        header: 'average'
    ) 
    review19 = Review.create(
        user_id: 5,
        product_id: 9,
        rating: 4,
        comment: 'B+ product.  It was a bit small',
        header: 'great product'
    ) 
    review20 = Review.create(
        user_id: 6,
        product_id: 10,
        rating: 5,
        comment: 'OMG THIS WAS D BEST PROJECT IN DA WHOLE WORLD',
        header: 'excellent product'
    ) 
    review21 = Review.create(
        user_id: 7,
        product_id: 11,
        rating: 1,
        comment: 'SAVE YOUR WALLET AND DO  NOT BUY THIS',
        header: 'worst product'
    ) 
    review22 = Review.create(
        user_id: 1,
        product_id: 12,
        rating: 1,
        comment: 'HORRIBLE HORRIBLE HORRIBLE PRODUCT',
        header: 'THE ABSOLUTE WORST product'
    ) 
    review23 = Review.create(
        user_id: 2,
        product_id: 13,
        rating: 5,
        comment: 'NOTHING ELSE BETTER ON THE MARKET TODAY. A+++++',
        header: 'would buy this product again and again'
    ) 
    review24 = Review.create(
        user_id: 3,
        product_id: 14,
        rating: 2,
        comment: 'didnt think it would be this bad but it was okay at first',
        header: 'didnt work after a while'
    ) 
    review25 = Review.create(
        user_id: 4,
        product_id: 15,
        rating: 3,
        comment: 'meh it was so-so',
        header: 'meh product'
    ) 
    review26 = Review.create(
        user_id: 5,
        product_id: 16,
        rating: 5,
        comment: 'would repurchase this',
        header: 'outstanding product'
    ) 
    review27 = Review.create(
        user_id: 6,
        product_id: 17,
        rating: 2,
        comment: 'expected more for the price point',
        header: 'too expensive for this product'
    ) 
    review28 = Review.create(
        user_id: 7,
        product_id: 18,
        rating: 1,
        comment: 'would not buy again',
        header: 'worst product'
    ) 
    review29 = Review.create(
        user_id: 1,
        product_id: 19,
        rating: 1,
        comment: 'this product stank',
        header: 'worst product'
    ) 
    review30 = Review.create(
        user_id: 2,
        product_id: 20,
        rating: 3,
        comment: 'so-so',
        header: 'so-so'
    ) 
    review31 = Review.create(
        user_id: 3,
        product_id: 21,
        rating: 1,
        comment: 'buyers beware',
        header: 'seller wont refund'
    ) 
    review32 = Review.create(
        user_id: 4,
        product_id: 22,
        rating: 2,
        comment: 'Niles sent me the wrong product',
        header: 'wrong product received'
    ) 
    review33 = Review.create(
        user_id: 5,
        product_id: 23,
        rating: 4,
        comment: 'only complaint waas the price point',
        header: 'pretty good product'
    ) 
    review34 = Review.create(
        user_id: 6,
        product_id: 24,
        rating: 5,
        comment: 'this product did the job and it was cheap',
        header: 'MAGNIFICENT product'
    ) 
    review35 = Review.create(
        user_id: 7,
        product_id: 25,
        rating: 2,
        comment: 'it was too expensive for what it did',
        header: 'did not like this product too much'
    ) 
    review36 = Review.create(
        user_id: 1,
        product_id: 26,
        rating: 3,
        comment: 'wasnt good or wasnt bad',
        header: 'not sure what to feel'
    ) 
    review37 = Review.create(
        user_id: 2,
        product_id: 27,
        rating: 4,
        comment: 'hope to get more of this but the price was a bit high',
        header: 'pretty good product'
    ) 
    review38 = Review.create(
        user_id: 3,
        product_id: 28,
        rating: 4,
        comment: 'it is definitely good for the price but others are better',
        header: 'would buy this again but others products are slightly better'
    ) 
    review39 = Review.create(
        user_id: 4,
        product_id: 29,
        rating: 4,
        comment: 'muy excellenete',
        header: 'excellente product'
    ) 
    review40 = Review.create(
        user_id: 5,
        product_id: 30,
        rating: 5,
        comment: 'have not found anything else that is better than this',
        header: 'can i say best product?'
    ) 
    review41 = Review.create(
        user_id: 6,
        product_id: 31,
        rating: 4,
        comment: 'pretty good product',
        header: 'not bad at all'
    ) 
    review42 = Review.create(
        user_id: 7,
        product_id: 32,
        rating: 2,
        comment: 'pretty bad for what it does',
        header: 'bottom of the barrel product'
    ) 
    review43 = Review.create(
        user_id: 1,
        product_id: 33,
        rating: 4,
        comment: 'only complaint was it was a little pricey',
        header: 'B+ product'
    ) 
    review44 = Review.create(
        user_id: 2,
        product_id: 34,
        rating: 4,
        comment: 'didnt think it was worth the price',
        header: 'B- product'
    ) 
    review45 = Review.create(
        user_id: 3,
        product_id: 35,
        rating: 3,
        comment: 'average at best',
        header: 'average product'
    ) 
    review46 = Review.create(
        user_id: 4,
        product_id: 36,
        rating: 2,
        comment: 'it broke after a couple of use',
        header: 'this shouldnt be sold'
    ) 
    review47 = Review.create(
        user_id: 5,
        product_id: 37,
        rating: 1,
        comment: 'THE WORST PRODUCT',
        header: 'DO NOT BUY'
    ) 
    review48 = Review.create(
        user_id: 6,
        product_id: 38,
        rating: 4,
        comment: 'solid product and solid price point',
        header: 'B+ product'
    ) 
    review49 = Review.create(
        user_id: 7,
        product_id: 39,
        rating: 4,
        comment: 'great product at the right price point',
        header: 'pretty good'
    ) 
    review50 = Review.create(
        user_id: 1,
        product_id: 40,
        rating: 4,
        comment: 'This was a greaet product I would deinitely rebuy',
        header: 'not a bad product'
    ) 
    review51 = Review.create(
        user_id: 2,
        product_id: 41,
        rating: 4,
        comment: 'great product and would definitely rebuy',
        header: 'would definitely rebuy'
    ) 
    review52 = Review.create(
        user_id: 3,
        product_id: 42,
        rating: 5,
        comment: 'pretty solid product no complaints about it',
        header: 'the best product I have ever used.  Highly recommeneded'
    ) 
    review53 = Review.create(
        user_id: 4,
        product_id: 43,
        rating: 4,
        comment: 'the price was great and cant complain much about this at all',
        header: 'didnt think it would work this well'
    ) 
    review54 = Review.create(
        user_id: 5,
        product_id: 44,
        rating: 1,
        comment: 'i threw it in the trash immediately',
        header: 'worsttttttttttttt product'
    ) 
    review55 = Review.create(
        user_id: 6,
        product_id: 45,
        rating: 4,
        comment: 'was skeptical but it was a good product',
        header: 'worked pretty well'
    ) 
    review56 = Review.create(
        user_id: 7,
        product_id: 46,
        rating: 3,
        comment: 'average',
        header: 'average product'
    ) 
    review57 = Review.create(
        user_id: 1,
        product_id: 47,
        rating: 4,
        comment: 'great nothing much else to say',
        header: 'great product'
    ) 
    review58 = Review.create(
        user_id: 2,
        product_id: 48,
        rating: 5,
        comment: 'they are raving about this product',
        header: 'my whole family loved this product'
    ) 
    review59 = Review.create(
        user_id: 3,
        product_id: 49,
        rating: 4,
        comment: 'it did a great job and would gift it',
        header: 'not much to complain about'
    ) 
    review60 = Review.create(
        user_id: 4,
        product_id: 50,
        rating: 5,
        comment: 'I would give it a 10 star if I could',
        header: 'A+++++++'
    ) 
    review61 = Review.create(
        user_id: 5,
        product_id: 51,
        rating: 4,
        comment: 'Yep it worked well',
        header: 'worked extremely well'
    ) 
    review62 = Review.create(
        user_id: 6,
        product_id: 52,
        rating: 2,
        comment: 'just didnt like it',
        header: 'not my cup of tea'
    ) 
    review63= Review.create(
        user_id: 7,
        product_id: 53,
        rating: 1,
        comment: 'threw it in the garbage after a day',
        header: 'worst product EVER'
    ) 
    review64 = Review.create(
        user_id: 1,
        product_id: 54,
        rating: 3,
        comment: 'meh',
        header: 'meh'
    ) 
    review65 = Review.create(
        user_id: 2,
        product_id: 55,
        rating: 4,
        comment: 'it was a bit small but worked well',
        header: 'worked out well'
    ) 
    review66 = Review.create(
        user_id: 3,
        product_id: 56,
        rating: 4,
        comment: 'did its job',
        header: 'great!!!'
    ) 
    review67 = Review.create(
        user_id: 4,
        product_id: 57,
        rating: 3,
        comment: 'average',
        header: 'average product'
    ) 
    review68 = Review.create(
        user_id: 5,
        product_id: 58,
        rating: 4,
        comment: 'paid customer review',
        header: 'great product'
    ) 
    review69 = Review.create(
        user_id: 6,
        product_id: 59,
        rating: 2,
        comment: 'lets hope this isnt on the market for long',
        header: 'was too expensive'
    ) 
    review70 = Review.create(
        user_id: 7,
        product_id: 60,
        rating: 1,
        comment: 'broke after an hour',
        header: 'scam product'
    ) 
    review71 = Review.create(
        user_id: 1,
        product_id: 61,
        rating: 1,
        comment: 'didnt like it',
        header: 'worst product'
    ) 
    review72 = Review.create(
        user_id: 2,
        product_id: 62,
        rating: 1,
        comment: 'ugh!!! I paid money for this and it broke!!!!!',
        header: 'worst product'
    ) 
    review73 = Review.create(
        user_id: 3,
        product_id: 63,
        rating: 2,
        comment: 'didnt work out too well',
        header: 'not worth the money'
    ) 
    review74 = Review.create(
        user_id: 4,
        product_id: 64,
        rating: 3,
        comment: 'average product and average price',
        header: 'average product'
    ) 
    review75 = Review.create(
        user_id: 5,
        product_id: 65,
        rating: 4,
        comment: 'yippeeeeee great product',
        header: 'great great great product'
    ) 
    review76 = Review.create(
        user_id: 6,
        product_id: 66,
        rating: 4,
        comment: 'did its job would get it again',
        header: 'solid product'
    ) 
    review77 = Review.create(
        user_id: 7,
        product_id: 67,
        rating: 5,
        comment: 'was a very well made product and loved it',
        header: 'Would give it 10 stars'
    ) 
    review78 = Review.create(
        user_id: 1,
        product_id: 68,
        rating: 2,
        comment: 'do not buy. The product did not work well',
        header: 'confused.....'
    ) 
    

