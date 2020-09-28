require 'pry'
# Write your code below game_hash
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
def num_points_scored players_name

  game_hash.each {|key,value|
      count=0 
      while (count < 5) do
      if (game_hash[key][:players][count][:player_name] == players_name) then
        return game_hash[key][:players][count][:points]
      end
      count += 1
    end
  }
end

def shoe_size players_name
  game_hash.each {|key,value|
      count=0 
      while (count < 5) do
      if (game_hash[key][:players][count][:player_name] == players_name) then
       # binding.pry
        return game_hash[key][:players][count][:shoe]
      end
      count += 1
    end
  }
end

def team_colors team_name
  game_hash.each do |key, value|
    if game_hash[key][:team_name] == team_name then
      return game_hash[key][:colors]
    end  
  end
end

def team_names 
  return [game_hash[:home][:team_name],game_hash[:away][:team_name]]
end

def player_numbers team_name
  player_number_array = []
   game_hash.each do |key, value|
    if game_hash[key][:team_name] == team_name then
      count = 0
      while count < 5 do
        player_number_array.push(game_hash[key][:players][count][:number])
        count += 1
      end
    end  
  end
  player_number_array
end

def player_stats players_name
    game_hash.each {|key,value|
      count=0 
      while (count < 5) do
      if (game_hash[key][:players][count][:player_name] == players_name) then
       # binding.pry
        return game_hash[key][:players][count]
      end
      count += 1
    end
  }
end

def big_shoe_rebounds
  biggest_shoe = -1
  rebounds = -1
      game_hash.each {|key,value|
      count=0 
      while (count < 5) do
      if (game_hash[key][:players][count][:shoe] > biggest_shoe) then
       # binding.pry
        biggest_shoe = game_hash[key][:players][count][:shoe]
        rebounds = game_hash[key][:players][count][:rebounds]
      end
      count += 1
    end
  }
  rebounds
end