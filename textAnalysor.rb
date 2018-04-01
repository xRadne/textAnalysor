require_relative 'rb/analyze'
require_relative 'rb/cmdHelpers'
require_relative 'rb/inputPath'

Gem.win_platform? ? (system "cls") : (system "clear")

puts "Text analyzor!"
puts "--------------"
puts "Input some text to analyse"
puts "You can also input a relative path starting by '/'" 
puts "or an absolute path e.g 'C:/Users/...''"
print "Input: " 

text = inputPath

askFor("Do you want to know word frequencies?", 
    method(def Y(text) 
                puts "Frequency of every word in text: "
                wordFrequencies(text).sort().each {|word, times| puts "#{word} : #{times}"}
            end), 
    method(def N(args)
                puts "no! :(" 
            end),
    text
)
