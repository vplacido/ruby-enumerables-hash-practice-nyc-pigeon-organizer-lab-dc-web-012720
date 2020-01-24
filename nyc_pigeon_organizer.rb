def nyc_pigeon_organizer(data)
  # write your code here!
  newData = {}
  data.each do |attribute, hash|
    hash.each do |catagory, arr|
      arr.each do |value|
        if !newData.has_key?(value)
          newData[value] = {}
        end
        if !newData[value].has_key?(attribute)
          newData[value][attribute] = []
        end
        if !newData[value][attribute].include?(catagory)
          newData[value][attribute] << catagory.to_s 
        end
      end 
    end 
  end 
  newData
end
