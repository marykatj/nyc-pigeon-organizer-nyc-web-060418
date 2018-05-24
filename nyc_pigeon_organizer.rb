require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, options|
    options.each do |option, names_array|
      names_array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(attribute)
          new_hash[name][attribute] = []
        end

        if !new_hash[name][attribute].include?(option)
          new_hash[name][attribute] << option.to_s
        end
      end
    end
  end
  new_hash
end
