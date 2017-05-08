# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1, name: 'Bailey Wonger', img_url: 'http://i.pravatar.cc/300?u=a042582942677dsqd')
User.create(id: 2, name: 'Indigo Violet', img_url: 'http://i.pravatar.cc/300?u=a042581f4e2942677dsqd')
User.create(id: 3, name: 'Archibald Northbottom', img_url: 'http://i.pravatar.cc/300?u=a042581f4e294267')
User.create(id: 4, name: 'Jake Weary', img_url: 'http://i.pravatar.cc/300?u=a042581f4e294268ds')
User.create(id: 5, name: 'Piff Jenkins', img_url: 'http://i.pravatar.cc/300?u=a042581f4e29426')
User.create(id: 6, name: 'Eleanor Fant', img_url: 'http://i.pravatar.cc/300?u=a042581f4e29426708d')
User.create(id: 7, name: 'Ingredia Nutrishia', img_url: 'http://i.pravatar.cc/300?u=a042581f4e29026704d')
User.create(id: 8, name: 'Jason Response', img_url: 'http://i.pravatar.cc/300?u=a04e29026704d')

Follow.create(follower_id: 1, followed_id: 3)
Follow.create(follower_id: 1, followed_id: 5)
Follow.create(follower_id: 1, followed_id: 7)
Follow.create(follower_id: 2, followed_id: 1)
Follow.create(follower_id: 3, followed_id: 4)
Follow.create(follower_id: 3, followed_id: 6)
Follow.create(follower_id: 4, followed_id: 1)
Follow.create(follower_id: 4, followed_id: 7)
Follow.create(follower_id: 4, followed_id: 5)
Follow.create(follower_id: 4, followed_id: 8)
Follow.create(follower_id: 5, followed_id: 2)
Follow.create(follower_id: 5, followed_id: 4)
Follow.create(follower_id: 6, followed_id: 1)
Follow.create(follower_id: 6, followed_id: 3)
Follow.create(follower_id: 6, followed_id: 5)
Follow.create(follower_id: 7, followed_id: 8)
Follow.create(follower_id: 7, followed_id: 1)
Follow.create(follower_id: 8, followed_id: 4)

Post.create(user_id: 6, content: "My Mum tries to be cool by saying that she likes all the same things that I do.")
Post.create(user_id: 4, content: "This is the last random sentence I will be writing and I am going to stop mid-sent")
Post.create(user_id: 1, content: "We have a lot of rain in June.")
Post.create(user_id: 6, content: "The clock within this blog and the clock on my laptop are 1 hour different from each other.")
Post.create(user_id: 2, content: "When I was little I had a car door slammed shut on my hand. I still remember it quite vividly.")
Post.create(user_id: 3, content: "I'd rather be a bird than a fish.")
Post.create(user_id: 7, content: "How was the math test?")
Post.create(user_id: 3, content: "We need to rent a room for our party.")
Post.create(user_id: 5, content: "I think I will buy the red car, or I will lease the blue one.")
Post.create(user_id: 4, content: "Writing a list of random sentences is harder than I initially thought it would be.")