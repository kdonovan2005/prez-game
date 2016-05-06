# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jj = Player.create(name: "JJ", tagline: "I'm a werewolf", pic_url: "https://pbs.twimg.com/profile_images/2246719840/Me_with_the_kitties_.jpeg")
kristin = Player.create(name: "Kristin", tagline: "I'm totally not a werewolf", pic_url: "http://204.3.136.66/web/journal-files/Issues/sep-oct05/ciamb.jpg")



game_1 = Game.create(title: "The Awesomest", num_players: "2", skill_lvl: "3")

prez = Card.create(name: "President Trump", description: "This is the president.", pic_url: "http://inthesetimes.com/images/articles/trump_flicker_face_yess.jpg", faq: "How did Trump get elected?!", frequency: 1, team: "red")
vp = Card.create(name: "Vice President", description: "Trump convinced someone to run with him.", pic_url: "http://cdn.theatlantic.com/assets/media/img/mt/2015/07/AP_473596995531/lead_960.jpg?1437760759", faq: "How?", frequency: 1, team: "red")
cm = Card.create(name: "Campaign Manager", description: "Somehow got Trump elected (may be a wizard)", pic_url: "http://static03.mediaite.com/ln/up/2016/03/corey-lewandowski-356x234.jpg", faq: "Did I do that?", frequency: 1, team: "red")
congressperson = Card.create(name: "Congressperson", description: "Is wondering if they will still have a job under President Trump", pic_url: "http://www.electgoppatriots.org/wp-content/uploads/2015/02/zeldin-250x250-250x250.png", faq: "What's a congressperson to do in a dictatorship?", frequency: 2, team: "blue")
congressperson = Card.create(name: "Congressperson", description: "Is wondering if they will still have a job under President Trump", pic_url: "http://www.electgoppatriots.org/wp-content/uploads/2015/02/zeldin-250x250-250x250.png", faq: "What's a congressperson to do in a dictatorship?", frequency: 2, team: "blue")
