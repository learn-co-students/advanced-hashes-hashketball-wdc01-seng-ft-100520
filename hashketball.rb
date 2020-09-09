# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(p1)
  game_hash.each do |home_away, entire_team|
    entire_team[:players].each do |player_hash|
      if player_hash[:player_name] == p1
        return player_hash[:points]
      end
    end
  end
end

def shoe_size(p2)
    game_hash.each do |home_away, entire_team|
    entire_team[:players].each do |player_hash|
      if player_hash[:player_name] == p2
        return player_hash[:shoe]
      end
    end
  end
end

def team_colors(c)
  game_hash.each do |home_away, team_hash|
    if team_hash[:team_name] == c
    return team_hash[:colors]
    end
  end
end

def team_names
  teams = []
  game_hash.each do |key, value|
    teams << value[:team_name]
  end
  return teams
end

def player_numbers(random_team_name)
  jersey_numbers = []
  game_hash.each do |home_away, whole_hash|
    if random_team_name == whole_hash[:team_name]
    whole_hash[:players].each do |x_player|
      jersey_numbers << x_player[:number]
      end
    end
  end 
  return jersey_numbers
end

def player_stats(player_x)
  game_hash.each do |key, value|
    value[:players].each do |value2|
      if value2[:player_name] == player_x
        return value2
end
    end
  end
end

def big_shoe_rebounds
  biggest_shoe = nil
  rebounds = nil
   game_hash.each do |home_away_keys, team_name_colors_players_keys|
     team_name_colors_players_keys[:players].each do |first_player_hash|
       if biggest_shoe == nil ||  first_player_hash[:shoe] > biggest_shoe
         biggest_shoe = first_player_hash[:shoe]
         rebounds = first_player_hash[:rebounds]
        #binding.pry
      end
     end
   end 
   rebounds
end
