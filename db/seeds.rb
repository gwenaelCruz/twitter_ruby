# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1, name: 'Bailey Wonger', img_url: 'http://i.pravatar.cc/300?u=a042582942677dsqd')
User.create(id: 2, name: 'Indigo Violet', img_url: 'http://i.pravatar.cc/300?u=a042581f4e2942677dsqd')
User.create(id: 3, name: 'Archbald Northbottom', img_url: 'http://i.pravatar.cc/300?u=a042581f4e294267')
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

Post.create()