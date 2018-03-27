def Analyse(text)
    freqs = {}
    freqs.default = 0
    
    text.each_char {|char| freqs[char] += 1}
    puts "Frequency of every character in text: "
    ("a".."z").each {|char| puts "#{char} : #{freqs[char]}"}
end

def GetTextFrom(path)
    text = ""
    File.open(path).each do |line|
        text += line
    end 
    return text
end

puts "Text analyser!"
puts "--------------"
puts "Input som text to analyse"
puts "You can also input a path starting by '/'"
print ": "
input = gets.chomp

case input[0]
when nil
    puts "No path or text was given. Runs example.txt instead"
    Analyse("example.txt")
when "/"
    input.slice!(0)
    puts "Analysing path: '#{input}'"
    Analyse(GetTextFrom(input))
else
    Analyse(input)
end