module ChatBot

  HELLO = "Hello! What is your name?"
  FAVORITECOLOR = "What is your favorite color?"
  FAVORITESHAPE = "What is your favorite shape?"

  def NiceToMeetYou(name)
    puts "Hello, #{name}, nice to meet you!"
  end

  def NiceColor(color)
    puts "#{color} is a very nice color."
  end

  def InterestingShape(color)
    puts "#{color} is a very interesting shape."
  end

  def SayHello()
    AskQuestion(ChatBot::HELLO)
    my_name = gets.chomp
    CheckAnswers(my_name)
    ChatBot.NiceToMeetYou(my_name)
  end

  def AskFavoriteColor()
    AskQuestion(ChatBot::FAVORITECOLOR)
    my_color = gets.chomp
    CheckAnswers(my_color)
    ChatBot.NiceColor(my_color)
  end

  def AskFavoriteShape()
    AskQuestion(ChatBot::FAVORITESHAPE)
    my_shape = gets.chomp
    CheckAnswers(my_shape)
    ChatBot.InterestingShape(my_shape)
  end

  def AskQuestion(message)
    puts message
  end

  def CheckAnswers(answer)
    answer =~ /(\s*)/
    puts answer
    if answer == false
      puts "Please enter a valid answer."
    end
  end

end

include ChatBot

def HelloColorShape()
  commands = [
    ChatBot.SayHello(),
    ChatBot.AskFavoriteColor(),
    ChatBot.AskFavoriteShape(),
  ]
  commands.each do |command|
    command
    sleep 3
  end
end

HelloColorShape()