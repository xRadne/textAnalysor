def askFor(q, yesMethod, noMethod)
    print q + " [Y/N]: "
    input = gets.chomp
    case input[0]
    when 'Y', 'y'
        yesMethod.call()
    when 'N', 'n'
        noMethod.call()
    end
end