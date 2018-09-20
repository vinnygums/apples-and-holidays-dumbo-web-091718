def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  empty_supplies = []
 
  holiday_hash.each do |season, holiday|
   if season == :winter
     holiday.each do |holiday_name, supply|
        supply.each do |value|
         empty_supplies << value
        end
     end
   end
 end
 empty_supplies
end

def all_supplies_in_holidays(holiday_hash)
  empty_string = ""
  holiday_hash.each do |season, holiday|
    empty_string << season.to_s.capitalize + ":" + "\n"
     holiday.each do |holiday_name, supply|
       new_name = holiday_name.to_s.gsub('_', ' ')
       new_name1 = new_name.split
       new_name1.each do |word|
         word.capitalize!
       end
       empty_string << "  " + new_name1.join(" ") + ": " + supply.join(", ") + "\n"
    end
  end
   puts empty_string.chomp!
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_name, supply|
      if supply.include?("BBQ")
        holidays_with_bbq << holiday_name
      end
    end
  end
   holidays_with_bbq
end







