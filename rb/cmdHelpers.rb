def askFor(q, yesMethod, noMethod, args)
    print q + " [Y/N]: "
    input = gets.chomp
    input = 'Y' if input == ''
    case input[0]
    when 'Y', 'y'
        yesMethod.call(args)
    when 'N', 'n'
        noMethod.call(args)
    end
end