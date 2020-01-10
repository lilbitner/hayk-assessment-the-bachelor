
contestants = JSON.parse(File.read('spec/fixtures/contestants.json'))


def get_first_name_of_season_winner(data, season)
  contestants.each do |season_number, contestant_data|
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

# def get_contestant_name(data, occupation)
#   # code here
#   contestants.each do |contestant_data, contestant_occupation| 
#     data.each do |contestant_data|
#       contestant_data.each do |contestant_occupation| 
#         if contestant_occupation == occupation 
#           contestant_data.each do |"name"|
#       return "name" 
#     end 
#   end 
# end

# def count_contestants_by_hometown(data, hometown)
#   contestants.each do |contestant_data, contestant_hometown|
#     data.each do |contestant_data|
#       contestant_data.each do |contestant_hometown|
#       if contestant_hometown == hometown
#         puts contestant_hometown[count]
#       count += 1 
#       end
# end

# def get_occupation(data, hometown)
#   contestants.each do |contestant_data, contestant_ocupation|
#     if contestant_data.find[:hometown] == hometown 
#     contestant_data[:occupation] == contestant_occupation 
#     contestant_occupation 
# end

# def get_average_age_for_season(data, season)
#   # code here
# end
