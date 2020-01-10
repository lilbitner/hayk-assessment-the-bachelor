require 'json'
require 'pry'
#contestants = JSON.parse(File.read('spec/fixtures/contestants.json'))

def get_first_name_of_season_winner(bachelortv, season)
  bachelortv.each do |season_number, contestant_data|
    if season == season_number
    contestant_data.each do |specific_contestant|
     if specific_contestant["status"] == "Winner"
     new_array = specific_contestant["name"].split
    return new_array[0]
        end
      end
    end
  end
end

def contestants(bachelortv)
  bachelortv.values.flatten
end

def get_contestant_name(bachelortv, occupation)
  match = contestants(bachelortv).find do |contestant|
    contestant["occupation"] == occupation
  end
match["name"]
end

def count_contestants_by_hometown(bachelortv, hometown)
  contestants(bachelortv).select do |contestant|
    contestant["hometown"] == hometown 
  end
  .count()
end

def get_occupation(bachelortv, hometown)
  match = contestants(bachelortv).find do |contestant|
    contestant["hometown"] = hometown
  end
match["occupation"]
end

# def get_average_age_for_season(data, season)
#   bachelortv.each do |season_number, contestant_data|
#     if season == season_number
#   contestant_data.each do |contestant|
#     age_value = contestant["age"]
#     age_value.to_f
#     total_age_value = age_value.sum
#     total_age_value/(contestant.length)
#       end
#     end
#   end
# end

def get_average_age_for_season(bachelortv, season)
  bachelortv.each do |season_number, contestant_data|
    if season == season_number
      contestant_data.each do |contestant|
        contestant["age"].reduce(0) do |sum|
          sum += age
        end
      end
    end
  end
end