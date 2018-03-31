require_relative 'rb/analyze'
require_relative 'rb/cmdHelpers'

puts "Text analyzor!"
puts "--------------"
puts "Input some text to analyse"
puts "You can also input a relative path starting by '/'" 
puts "or an absolute path e.g 'C:/Users/...''"
print "Input: " 
input = gets.chomp

case input[0]
when nil #No input
    print "-"
    path = "resources/example.txt"
    puts "No path or text was given. Analysing file '#{extractFileName(path)}' instead"
    text = GetTextFrom(path)
when '/' #Relative path
    input.slice!(0)
    path = input
    puts "Analysing file '#{extractFileName(path)}'"
    text = GetTextFrom(path)
when 'C', 'D' #Absolute path
    path = input
    puts "Analysing file '#{extractFileName(path)}'"
    text = GetTextFrom(path)
else #Text input
    Analyse(input)
end

askFor("Do you want to know word frequencies?", 
    method(def Y() puts "Yeeaa!" end), 
    method(def N() puts "no! :(" end))
