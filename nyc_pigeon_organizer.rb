require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}                                         # create empty hash
  data.each do |attribute, options|                     # iterate over oringial hash, with attributes (:color, :gender) and options (:purple, :yellow)
    options.each do |option, names_array|               # iterate over options hash, with option (:purple) and names_array ["Theo", "Rachel"]
      names_array.each do |name|                        # iterate over names array, for each name ("Theo")
        if !new_hash.has_key?(name)                     # if new_hash does not have name ("Theo"), then add name to the new_hash
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(attribute)          # if new_hash["Theo"] does not have attribute (:color), then add attribute to new_hash
          new_hash[name][attribute] = []
        end

        if !new_hash[name][attribute].include?(option)  # if new_hash["Theo"][":color"] does not include option (:purple), then add option to new hash (as a string)
          new_hash[name][attribute] << option.to_s
        end
      end
    end
  end
  new_hash
end
