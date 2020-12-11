# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  holder = ["", 0]
  if name_hash == {} || name_hash == nil
    return nil
  else
    name_hash.map do |name, num|
      if holder[0] == "" && holder[1] == 0
        holder = [name, num]
      elsif num < holder[1]
        holder = [name, num]
      end
    end
  end
  holder[0]
end