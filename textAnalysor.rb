require_relative 'analyze'

puts "Text analyser!"
puts "--------------"
puts "Input som text to analyse"
puts "You can also input a path starting by '/'"
print ": "
input = gets.chomp

case input[0]
when nil
    puts "No path or text was given. Runs example.txt instead"
    Analyse(GetTextFrom("example.txt"))
when '/'
    input.slice!(0)
    puts "Analysing path: '#{input}'"
    Analyse(GetTextFrom(input))
else
    Analyse(input)
end