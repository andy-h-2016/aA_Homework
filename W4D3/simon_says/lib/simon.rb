require 'byebug'
require 'colorize'
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over?
      take_turn
    end
    game_over_message
    reset_game
  end

  def game_over?
    @game_over
  end

  def take_turn
    show_sequence
    if require_sequence
      round_success_message
      self.sequence_length += 1
    else
      self.game_over = true
    end
  end

  def show_sequence
    add_random_color
    puts "Pay attention to the order of the colors shown:"
    seq.each do |color|
      puts color.colorize(color.to_sym)
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    puts "Now enter the order of the colors just shown (separate with spaces)!"
    answer = gets.chomp.split.map(&:downcase)
    answer == seq
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Correct! Your current score is #{sequence_length}. Get ready for the next round!"
    sleep(1)
    system("clear")
  end

  def game_over_message
    puts "That is incorrect, game over! Your score was #{sequence_length - 1}"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end


g = Simon.new
g.play
# simon = Simon.new
# simon.sequence_length = 4
# simon.seq = ["blue", "red", "green"]
# simon.game_over = true
# simon.reset_game
# p simon.sequence_length
# p simon.seq
# p simon.game_over