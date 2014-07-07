def title(book)
  articles = ["a", "an", "the", "in", "of"]
  titleized = []
  words = book.split(" ")
  titleized << words[0].capitalize
  words = words[1..-1]
 
  for word in words
    if articles.include?(word)
       word = word
    else
       word = word.capitalize
    end
    titleized << word
    end
    puts "The title is: "+titleized.join(" ")
    return titleized.join(" ")
    end
    