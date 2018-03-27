print "Write a text to analyse: "
text = gets.chomp
text.downcase!
freqs = {}
freqs.default = 0
text.each_char {|char| freqs[char] += 1}
puts "Frequency of every character: "
("a".."z").each {|char| puts "#{char} : #{freqs[char]}"}