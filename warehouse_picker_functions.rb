require( "pry-byebug" )


#Create 3 array of hashes
 #First array values should be a10 .... a1 
 #Second array values shoud be c1 ... c10
 #Third arrat values shoud be b1 ... b10

  WAREHOUSE_BAY = [
    { shelf: "a10", item: "rubber band" },
    { shelf: "a9", item: "glow stick" },
    { shelf: "a8", item: "model car" },
    { shelf: "a7", item: "bookmark" },
    { shelf: "a6", item: "shovel" },
    { shelf: "a5", item: "rubber duck" },
    { shelf: "a4", item: "hanger" },
    { shelf: "a3", item: "blouse" },
    { shelf: "a2", item: "stop sign" },
    { shelf: "a1", item: "needle" },

    { shelf: "c1", item: "rusty nail" },
    { shelf: "c2", item: "drill press" },
    { shelf: "c3", item: "chalk" },
    { shelf: "c4", item: "word search" },
    { shelf: "c5", item: "thermometer" },
    { shelf: "c6", item: "face wash" },
    { shelf: "c7", item: "paint brush" },
    { shelf: "c8", item: "candy wrapper" },
    { shelf: "c9", item: "shoe lace" },
    { shelf: "c10", item: "leg warmers" },

    { shelf: "b1", item: "tyre swing" },
    { shelf: "b2", item: "sharpie" },
    { shelf: "b3", item: "picture frame" },
    { shelf: "b4", item: "photo album" },
    { shelf: "b5", item: "nail filer" },
    { shelf: "b6", item: "tooth paste" },
    { shelf: "b7", item: "bath fizzers" },
    { shelf: "b8", item: "tissue box" },
    { shelf: "b9", item: "deodorant" },
    { shelf: "b10", item: "cookie jar" },

]



def item_at_bay( bay )
  for shelf in WAREHOUSE_BAY
    return shelf[:item] if shelf[:shelf] == bay
  end
end

def bay_return_item( item )
  for shelf in WAREHOUSE_BAY
    return shelf[:shelf] if shelf[:item] == item
  end
end

def list_of_bays( bay_one, bay_two, bay_three )
  
  search_items = []
#binding.pry
  for shelf in WAREHOUSE_BAY

    if ( shelf[:shelf] == bay_one)
      search_items << shelf[:item]
    elsif ( shelf[:shelf] == bay_three)
      search_items << shelf[:item]
    elsif ( shelf[:shelf] == bay_two)
      search_items << shelf[:item]
    end

  end
  
  array_to_string = search_items * (", ")
  return  array_to_string

end

def list_of_items( item_one, item_two , item_three)

    search_bay = []
  #binding.pry
    for shelf in WAREHOUSE_BAY

      if ( shelf[:item] == item_one)
        search_bay << shelf[:shelf]
      elsif ( shelf[:item] == item_three)
        search_bay << shelf[:shelf]
      elsif ( shelf[:item] == item_two)
        search_bay << shelf[:shelf]
      end

    end
    
    array_to_string = search_bay * (", ")
    return  array_to_string

end















