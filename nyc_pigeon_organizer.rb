def nyc_pigeon_organizer(data)
  pigeon_list = {}
 
  data.each{|attribute, attribute_hash|
    attribute_hash.each{|key,name_array|
      name_array.each{|name|
        if !pigeon_list[name]
          pigeon_list[name] = {attribute => [key.to_s]}
          
        else 
          
          pigeon_list[name][attribute] << [key]
          pigeon_list[name][attribute][key] = pigeon_list[name][attribute][key].flatten

        end





      }
    }
  }
  return pigeon_list 
end

