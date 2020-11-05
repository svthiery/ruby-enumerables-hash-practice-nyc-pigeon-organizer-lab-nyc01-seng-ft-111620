require 'pry'

def pigeon_names_getter(data)
  pigeon_names = []
  data.each do |key, value|
    value.each do |attribute, names_array|
      count = 0 
      while count < names_array.length do
        names_array.each {|name| pigeon_names << name}
        count += 1 
      end
    end
  end
  pigeon_names = pigeon_names.uniq
  pigeon_names
end 

def nyc_pigeon_organizer(data)
  pigeon_names_array = pigeon_names_getter(data)
  pigeon_organizer = {}
  pigeon_names_array.each do |element|
    pigeon_organizer[element] = {:color => [], :gender => [], :lives => []}
  end
  data.each do |key, value|
    value.each do |inner_key, inner_value|
      inner_value.each do |name|
        pigeon_organizer[name][key] = pigeon_organizer[name][key] << inner_key.to_s
      end
    end
  end
  pigeon_organizer
end
  



