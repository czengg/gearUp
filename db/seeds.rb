# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.delete_all
# user1 = User.create(email: "cindy.cmu.edu", password: "password", password_confirmation: "password")
# user2 = User.create(email: "jay.cmu.edu", password: "password", password_confirmation: "password")
# user3 = User.create(email: "ali.cmu.edu", password: "password", password_confirmation: "password")
# user4 = User.create(email: "noshin.cmu.edu", password: "password", password_confirmation: "password")
# puts user1.errors if user1.nil? 
# puts user2.errors if user2.nil?
# puts user3.errors if user3.nil?  
# puts user4.errors if user4.nil? 

# Player.delete_all
# player1 = Player.create(first_name: "Cindy", last_name: "Zeng", phone: "1234567", zip: "15213", user_id: user1.id)
# player2 = Player.create(first_name: "Jay", last_name: "Chopra", phone: "1234568", zip: "15213", user_id: user2.id)
# player3 = Player.create(first_name: "Ali", last_name: "Naqi", phone: "1234569", zip: "15213", user_id: user3.id)
# player4 = Player.create(first_name: "Noshin", last_name: "Nisa", phone: "1234510", zip: "15213", user_id: user4.id)
# puts player1.errors if player1.nil? 
# puts player2.errors if player2.nil? 
# puts player3.errors if player3.nil? 
# puts player4.errors if player4.nil? 

Sport.delete_all
tennis = Sport.create(name: 'Tennis', description: 'a game in which two or four players strike a ball with rackets over a net stretched across a court. The usual form (originally called lawn tennis ) is played with a felt-covered hollow rubber ball on a grass, clay, or artificial surface.')
badminton = Sport.create(name: 'Badminton', description: 'a game with rackets in which a shuttlecock is played back and forth across a net.')
pingpong = Sport.create(name: 'Ping Pong', description: 'an indoor game based on tennis, played with small paddles and a ball bounced on a table divided by a net.')
squash = Sport.create(name: 'Squash', description: 'a game in which two players use rackets to hit a small, soft rubber ball against the walls of a closed court.')
racquetball = Sport.create(name: 'Racquetball', description: 'a game played with a small hard ball and a short-handled racket in a four-walled handball court')
puts tennis.errors if tennis.nil? 
puts badminton.errors if badminton.nil? 
puts pingpong.errors if pingpong.nil? 
puts squash.errors if squash.nil? 
puts racquetball.errors if racquetball.nil? 

# Match.delete_all
# match1 = Match.create(location: 'Carnegie Mellon Tennis Courts', player_one_id: player1.id, player_two_id: player2.id, sport_id: tennis.id, winner_id: player1.id)
# match2 = Match.create(location: 'UPitt Badminton Courts', player_one_id: player3.id, player_two_id: player4.id, sport_id: badminton.id, winner_id: player4.id)
# match3 = Match.create(location: 'Duquesne Rec Room', player_one_id: player1.id, player_two_id: player3.id, sport_id: pingpong.id, winner_id: player3.id)
# match4 = Match.create(location: 'Chatham Squash Courts', player_one_id: player2.id, player_two_id: player4.id, sport_id: squash.id)
# match5 = Match.create(location: 'Carlow Racquetball Courts', player_one_id: player1.id, player_two_id: player4.id, sport_id: racquetball.id)
# match6 = Match.create(location: 'UPitt Badminton Courts', player_one_id: player1.id, player_two_id: player3.id, sport_id: tennis.id)
# match6 = Match.create(location: 'UPitt Badminton Courts', player_one_id: player1.id, player_two_id: player2.id, sport_id: tennis.id)
# puts match1.errors if match1.nil? 
# puts match2.errors if match2.nil? 
# puts match3.errors if match3.nil? 
# puts match4.errors if match4.nil? 
# puts match5.errors if match5.nil? 
# puts match6.errors if match6.nil? 

# Rank.delete_all
# rank1 = Rank.create(player_id: player1.id, score: 1);
# rank2 = Rank.create(player_id: player2.id, score: -1);
# rank3 = Rank.create(player_id: player3.id, score: -1);
# rank4 = Rank.create(player_id: player4.id, score: 1);
# rank5 = Rank.create(player_id: player1.id, score: -1);
# rank6 = Rank.create(player_id: player3.id, score: 1);
# rank7 = Rank.create(player_id: player1.id, score: -1);
# rank8 = Rank.create(player_id: player3.id, score: 1);
# puts rank1.errors if rank1.nil? 
# puts rank2.errors if rank2.nil? 
# puts rank3.errors if rank3.nil? 
# puts rank4.errors if rank4.nil? 
# puts rank5.errors if rank5.nil? 
# puts rank6.errors if rank6.nil? 
# puts rank7.errors if rank7.nil? 
# puts rank8.errors if rank8.nil? 


