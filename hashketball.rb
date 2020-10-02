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

def num_points_scored(player_name)
  hashkell = game_hash()
  players = hashkell[:home][:players]
  points = get_points(player_name, players)
  if(points < 0)
    players = hashkell[:away][:players]
    points = get_points(player_name, players)
  end
  return points
end

def get_points(player_name, players)
  players.each do |player| 
    if player[:player_name].eql?(player_name)
      return player[:points]
    end
  end
  return -1
end

def shoe_size(player_name)
  hashkell = game_hash()
  players = hashkell[:home][:players]
  shoe = get_shoe_size(player_name, players)
  if(shoe < 0)
    players = hashkell[:away][:players]
    shoe = get_shoe_size(player_name, players)
  end
  return shoe
end

def get_shoe_size(player_name, players)
  players.each do |player| 
    if player[:player_name].eql?(player_name)
      return player[:shoe]
    end
  end
  return -1
end

def team_colors(arg_team_name)
  hashkell = game_hash()
  team_name = hashkell[:home][:team_name]
  if arg_team_name.eql?team_name 
    return hashkell[:home][:colors]
  end
  team_name = hashkell[:away][:team_name]
  if arg_team_name.eql?team_name 
    return hashkell[:away][:colors]
  end
end

def team_names()
  hashkell = game_hash()
  team_names = []
  team_names.push(hashkell[:home][:team_name])
  team_names.push(hashkell[:away][:team_name])
  team_names
end

def player_numbers(team_name)
  hashkell = game_hash()
  if hashkell[:home][:team_name].eql?(team_name)
      return get_player_numbers(hashkell[:home][:players])
  end
  return get_player_numbers(hashkell[:away][:players])
end

def get_player_numbers(players)
  numbers = []
  players.each do |player| 
    numbers.push(player[:number])
  end
  numbers
end

def player_stats(player_name)
  hashkell = game_hash()
  players = hashkell[:home][:players]
  player = get_player_stats(player_name, players)
  if player == nil
    players = hashkell[:away][:players]
    player = get_player_stats(player_name, players)
  end
  player
end

def get_player_stats(player_name, players)
  players.each do |player| 
    if player[:player_name].eql?(player_name)
      return player
    end
  end
  return nil
end

def big_shoe_rebounds()
  hashkell = game_hash()
  players = hashkell[:home][:players]
  rebounds1 = get_big_shoe_rebounds(players)
  
  players = hashkell[:away][:players]
  rebounds2 = get_big_shoe_rebounds(players)
  
  rebounds1 > rebounds2 ? rebounds1 : rebounds2
end

def get_big_shoe_rebounds(players)
  big_shoe = 0
  rebounds = 0
  idx = 0
  players.each do |player|
    if idx == 0 
      big_shoe = player[:shoe]
      rebounds = player[:rebounds]
      idx += 1
    end
    
    if player[:shoe] > big_shoe
      big_shoe = player[:shoe]
      rebounds = player[:rebounds]
    end
  end
  return rebounds
end
