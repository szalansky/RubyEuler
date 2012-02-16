#Source http://snippets.dzone.com/posts/show/2330
class Array
  def to_h(key_definition)
    result_hash = Hash.new()
    
    counter = 0
    key_definition.each do |definition|
      if not self[counter] == nil then
        result_hash[definition] = self[counter].strip
      else
        # Insert the key definition with a empty value.
        # Because we probably still want the hash to contain the key.
        result_hash[definition] = ""
      end
      # For some reason counter.next didn't work here....
      counter = counter + 1
    end
    
    return result_hash
  end
end