def get_first_name_of_season_winner(data, season)
  data[season].each {|contestant| return contestant["name"].split(" ")[0] if contestant["status"] == "Winner"}
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each {|contestant| return contestant["name"] if contestant["occupation"] == occupation}
  end
end

def count_contestants_by_hometown(data, hometown)
  number = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      number += 1 if contestant["hometown"] == hometown
    end
  end
  return number
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  ages = 0.0
  number_of_contestants = data[season].length
  data[season].each do |contestant|
    ages += contestant["age"].to_f
  end
  return (ages / number_of_contestants).round
end
