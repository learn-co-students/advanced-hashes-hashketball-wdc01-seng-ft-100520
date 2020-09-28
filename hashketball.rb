# Write your code below game_hash
require 'pry'

def game_hash
  hash = {
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
  hash
end



def num_points_scored(player)
  hash = game_hash
  hash.each{|team, data|
    data.each{|quality, inner_data|
      if quality == :players
        inner_data.each{|player_data|
          player_data.each{|type|
            if (hash[team][quality][inner_data.index(player_data)][:player_name] == player)
              return hash[team][quality][inner_data.index(player_data)][:points]
            end 
          }
        }
      end   
    }
  }
end

def shoe_size(player)
  hash = game_hash
  hash.each{|team, data|
    data.each{|quality, inner_data|
      if quality == :players
        inner_data.each{|player_data|
          player_data.each{|type|
            if (hash[team][quality][inner_data.index(player_data)][:player_name] == player)
              return hash[team][quality][inner_data.index(player_data)][:shoe]
            end 
          }
        }
      end   
    }
  }
end

def team_colors(team)
  hash = game_hash
  hash.each {|team_name, data|
    if hash[team_name][:team_name] == team
      return hash[team_name][:colors]
    end 
  }
end   

def team_names
  hash = game_hash
  names = []
  hash.each{|team, data|
    names << hash[team][:team_name]
  }
  names
end 

def player_numbers(team_name)
  hash = game_hash
  numbers = []
  hash.each{|team, data|
    if hash[team][:team_name] == team_name
      hash[team][:players].each{|player_data|
        index = hash[team][:players].index(player_data)
        numbers << hash[team][:players][index][:number]
      }
    end 
  }
  numbers 
end 

def player_stats(player)
  hash = game_hash
  hash.each{|team, data|
    hash[team][:players].each{|player_data|
      index = hash[team][:players].index(player_data)
      if hash[team][:players][index][:player_name] == player 
        return player_data
      end 
    }
  }
end 

def big_shoe_rebounds
  hash = game_hash 
  max = 0
  rebounds = 0
  hash.each{|team, data|
    hash[team][:players].each{|player_data|
      index = hash[team][:players].index(player_data)
      if hash[team][:players][index][:shoe] > max
        max = hash[team][:players][index][:shoe]
        rebounds = hash[team][:players][index][:rebounds]
      end 
    }
  }
  rebounds 
end 

p big_shoe_rebounds