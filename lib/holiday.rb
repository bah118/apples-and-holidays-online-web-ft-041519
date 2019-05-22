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


  holiday_hash[:winter].values.each do |arr|
    arr << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_data|
	  puts season.to_s.capitalize + ":"
		holiday_data.each do |holiday, supply_arr|
			arr = []
			holiday.to_s.split("_").each {|word| arr << word.capitalize!}
		  puts "  " + arr.join(" ") + ": " + supply_arr.join(", ")
		end
	end
end


def all_holidays_with_bbq(holiday_hash)
  arr = []
  holiday_hash.each do |season, h_hash|
    h_hash.each do |holiday, supply|
      supply.each do |supply|
        if supply == "BBQ"
          arr << holiday
        end
      end
    end
  end
  arr
end







