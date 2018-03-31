require_relative 'analyze'

puts "Text analyser!"
puts "--------------"
puts "Input some text to analyse"
puts "You can also input a relative path starting by '/'" 
puts "or an absolute path e.g 'C:/Users/...''"
print "Input: "
input = gets.chomp

case input[0]
when nil #No input
    puts "No path or text was given. Runs example.txt instead"
    Analyse(GetTextFrom("example.txt"))
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