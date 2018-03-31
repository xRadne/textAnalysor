def Analyze(text)
    freqs = {}
    freqs.default = 0
    
    text.each_char {|char| freqs[char.downcase] += 1}
    words = text.split(' ')
    puts "Frequency of every character in text: "
    ("a".."z").each {|char| puts "#{char} : #{freqs[char]}" if freqs[char] != 0}
    
    puts "Frequency of every word in text: "
    wordList = wordFrequencies(text).sort().each {|word, times| puts "#{word} : #{times}"}
end

def wordFrequencies(text)
    words = text.split(" ")

    wordFreqs = {}
    wordFreqs.default = 0 
    words.each do |word|
        wordFreqs[word.downcase] += 1
    end
    return wordFreqs
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