require 'faker'

User.delete_all
Destination.delete_all
Genre.delete_all
Image.delete_all
OneDay.delete_all
TwoDay.delete_all

for i in 1..9 do 
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.username, bio: Faker::Quote.famous_last_words, location: Faker::Address.state, gender: 'Male', profile_pic: Faker::Avatar.image(slug: "my-own-slug"))
end

User.create(first_name: 'Jon', last_name: 'Boss', username: 'jboss', bio: 'Skiin is life', location: 'ATL, GA', gender: 'Male', profile_pic: 'https://i.imgur.com/TjI858b.jpg')


CS.states(:us).each do |key, value|
    CS.cities(key, :us).each do |city|
        Destination.create(location: city + ", " + value)
    end
end

Genre.create(name: 'genre')

OneDay.create(title: 'Test', summary: 'This is godamn summary and you better get used to it', day_one: 'a really really really long test where I just want to make sure that this all displays well.', user_id: User.find_by(username: 'jboss').id, destination_id: Destination.find_by(location: 'Atlanta, Georgia').id, genre_id: Genre.find_by(name: 'genre').id)
TwoDay.create(title: 'Two-Day Test', summary: 'AHHHHHHHHHHHHHHH blurb blurb blurb blurb quesoooooooo', day_one: 'this is a test to see if this shit will work or not...I really hope it does', day_two: 'it has been 24 hours since Ive been lost in the code ... its not looking good ... RIP', user_id: User.find_by(username: 'jboss').id, destination_id: Destination.find_by(location: 'Atlanta, Georgia').id, genre_id: Genre.find_by(name: 'genre').id)

Image.create(picture: 'https://i.imgur.com/yz6pzGK.jpg', one_day_id: OneDay.find_by(title: 'Test').id)
Image.create(picture: 'https://i.imgur.com/yz6pzGK.jpg', two_day_id: TwoDay.find_by(title: 'Two-Day Test').id)


