require "pry"

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

def num_points_scored(player_n)
  game_hash.each do |home_away, keys|
    keys[:players].each do |player|
      return player[:points] if player[:player_name] == player_n 
    end
  end
end

def shoe_size(player_n)
  game_hash.each do |home_away, keys|
    keys[:players].each do |player|
      return player[:shoe] if player[:player_name] == player_n
    end
  end
end

def team_colors(team_n)
  game_hash.each do |home_away, keys|
    return keys[:colors] if keys[:team_name] == team_n
  end
end

def team_names()
  list_of_team_names = []
  game_hash.each do |home_away, keys|
    list_of_team_names.push(keys[:team_name])
  end
  return list_of_team_names
end

def player_numbers(team_n)
  jersey_numbers = []
  game_hash.each do |home_away, keys|
    if keys[:team_name] == team_n
      keys[:players].each do |player|
        jersey_numbers.push(player[:number])
      end
    end
  end 
  return jersey_numbers
end

def player_stats(player_n)
  game_hash.each do |home_away, keys|
    keys[:players].each do |player|
      if player[:player_name] == player_n
        return player 
      end
    end
  end
end

def big_shoe_rebounds
  game_hash.each do |home_away, keys| # iterates through the game hash
    keys[:players].each do |player| #iterate through the array of player objects
      biggest_shoes = 0 #creates the variable to store the biggest shoe value
      i = 0 #start at 0th index in the array
      while i < keys[:players].length #iterate through the array of players
        if player[:shoe] > biggest_shoes #if the value is larger than the current biggest_shoes value
          biggest_shoes = player[:shoe] #replace the biggest shoe value with that one
          i += 1 #keep iterating through the array and making comparisons
        end #end of if loop
      end #end of while loop for players array
    end #end loop for players array (?)
  end #end of loop keys[:players]
end #end of loop for game_hash