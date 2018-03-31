def Analyse(text)
    freqs = {}
    freqs.default = 0
    
    text.each_char {|char| freqs[char] += 1}
    words = text.split(' ')
    puts "Frequency of every character in text: "
    ("a".."z").each {|char| puts "#{char} : #{freqs[char]}" if freqs[char] != 0}
    number = 0
    words.each {|word| number += 1 }
    puts "Number of words: #{number}" 
end

def GetTextFrom(path)
    text = ""
    File.open(path).each do |line|
        text += line
    end 
    return text
end

def extractFileName(path)
    parts = path.split(/[.'\\\/]/)
    text = parts[-2] + "." + parts[-1]
    return text
end