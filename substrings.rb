def substring(word, dictionary)
    count = Hash.new(0)
    word.downcase!

    substring_count={}
    dictionary.each do |value|
        count= word.scan(value).length
        
        substring_count[value] = count if count > 0
    end
 return substring_count
end