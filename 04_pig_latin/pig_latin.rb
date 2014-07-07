def translate(text)
	s = text.split(" ").map {|word| 
        if [a, e, i, o, u].include? word[0,1]
        	word + "ay"
        else [b, c, d, f, g, h, j, k, l, m, n, p, r, s, t, v, w, x, y, z].include? word[0,1]
        	word[1..-1] + word[0,1] + "ay"
   
        end
    }.join(" ")
    p s
enddef translate(text)
   s = text.split(" ").map {|word|
       if /a|e|i|o|u/.match(word[0,1])
          word + "ay"
       elsif /.qu/.match(word[0,3])
          word[3..-1] + word[0,3] + "ay"
       elsif /qu/.match(word[0,2])
          word[2..-1] + word[0,2] + "ay"
       elsif /sch/.match(word[0,3])
          word[3..-1] + word[0,3] + "ay"
       elsif /b|c|d|f|g|h|j|k|l|m|n|p|r|s|t|v|w|x|y|z/.match word[0,1]
           if /b|c|d|f|g|h|j|k|l|m|n|p|r|s|t|v|w|x|y|z/.match word[1,2]
              if /b|c|d|f|g|h|j|k|l|m|n|p|r|s|t|v|w|x|y|z/.match word[2,3]
                 word[3..-1] + word[0,3] + "ay"
              else
                 word[2..-1] + word[0,2] + "ay"
              end
            else
               word[1..-1] + word[0,1] + "ay"
            end  
            

       end
     
   }.join(" ")
   p s
end
