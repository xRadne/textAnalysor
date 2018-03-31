require_relative 'rb/analyze'

puts "Text analyser!"
puts "--------------"
puts "Input some text to analyse"
puts "You can also input a relative path starting by '/'" 
puts "or an absolute path e.g 'C:/Users/...''"
print "Input: "
input = gets.chomp

case input[0]
when nil #No input
    path = "resources/example.txt"
    puts "No path or text was given. Analysing file '#{extractFileName(path)}' instead"
    Analyse(GetTextFrom(path))
when '/' #Relative path
    input.slice!(0)
    path = input
    fileName = extractFileName(path)
    puts "Analysing file: '#{fileName}'"
    Analyse(GetTextFrom(path))
when 'C', 'D' #Absolute path
    path = input
    fileName = extractFileName(path)
    puts "Analysing file: '#{fileName}'"
    Analyse(GetTextFrom(path))
else #Text input
    Analyse(input)
end