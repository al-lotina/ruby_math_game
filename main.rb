class Player
  attr_accessor :lives, :name

  def initialize(name)
    @lives = 3
    @name = name
  end
end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

number1 = 0
number2 = 0

# game start
while player1.lives > 0 && player2.lives > 0 do 
  puts "#{player1.name}: What does #{number1 += rand(1..20)} plus #{number2 += rand(1..20)} equal?"
  print ">"
  answer = $stdin.gets.chomp.to_i

  if answer == number1 + number2
    puts "#{player1.name}: Yes! You are correct."
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  else
   puts "#{player1.name}: Seriously? No!"
    player1.lives -= 1
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end
  number1 = 0
  number2 = 0
  
  if player1.lives > 0 
    puts "#{player2.name}: What does #{number1 += rand(1..20)} plus #{number2 += rand(1..20)} equal?"
    print ">"
    answer = $stdin.gets.chomp.to_i

    if answer == number1 + number2
      puts "#{player2.name}: Yes, you are correct!"
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    else
      puts "#{player2.name}: Seriously? No!"
      player2.lives -= 1
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    end
  end
  number1 = 0
  number2 = 0
end

if player1.lives > player2.lives
  puts "#{player1.name} wins with a score of #{player1.lives}/3."
  puts "Good bye!"
else 
  puts "#{player2.name} wins with a score of #{player2.lives}/3."
  puts "Good bye!"
end
