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