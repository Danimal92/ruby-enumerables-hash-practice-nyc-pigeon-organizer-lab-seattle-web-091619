def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each{|attribute, attribute_hash| 

    attribute_hash.each{|key,name_array|
    
    
      name_array.each{|name|
        if !pigeon_list[name]
          p name
          p key 
          pigeon_list[name] = {attribute => [key.to_s]}
          p pigeon_list
          
        elsif pigeon_list[name][attribute]  
           
          pigeon_list[name][attribute] << key.to_s
          
        else 

          
          
          
          pigeon_list[name][attribute] = [key.to_s]


        end





      }
    }
  }
  return pigeon_list 
end