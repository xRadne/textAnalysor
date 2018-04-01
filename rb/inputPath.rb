def inputPath(path = "")
    unless path == "" {
        puts "Analysing file '#{extractFileName(path)}'"
        return GetTextFrom(path)  
    }
    
    input = gets.chomp
    case input[0]
    when nil #No input
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
        text = input
    end
end