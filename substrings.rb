def substrings(string, dictionary)
  new_string = string.downcase.gsub(/[[:punct:]]/, "")

  result = {}

  dictionary.each do |word|
    find_array = new_string.scan(word)

    find_array.each do |find|
      if result[find.to_sym].nil?
        result[find.to_sym] = 1
      else
        result[find.to_sym] += 1
      end
    end
  end

  result

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
