def play
    puts "enter the word "
    @word = gets.chomp
    array = @word.split('')
    @guess = "*"* @word.length
    puts " enter the chances "
    chances = gets.chomp.to_i
    already_guessed_letters = []
    count = 0
    while chances != 0 && count != 1
        puts "word = #{@guess}"
        puts "chances left = #{chances}"
        puts "guess the letter "
        guessed_word = gets.chomp
        if  already_guessed_letters.include?guessed_word
            puts "You cannot use these words gain #{already_guessed_letters}"
        else 
            already_guessed_letters.push(guessed_word)
            if @word.include?(guessed_word)
            a = []
            array.each.with_index{|item,index| a.push(index) if item == guessed_word}
            a.each{|i| @guess[i] = guessed_word}
            else
                chances = chances - 1
                puts " wrong word"
            end
            if @word == @guess
                count = 1
            end
        end
    end
    if count == 1
        puts "you won"
    else
        puts "you lost"
    end
            
end

play