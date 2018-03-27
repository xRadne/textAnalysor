def Analyse(path)
    freqs = {}
    freqs.default = 0
    
    File.open(path).each do |line|
        line.each_char {|char| freqs[char] += 1}
    end
    puts "Frequency of every character in '#{path}': "
    ("a".."z").each {|char| puts "#{char} : #{freqs[char]}"}
end

analyse("example.txt")