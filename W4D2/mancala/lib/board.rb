class Board
  attr_accessor :cups, :name1, :name2

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    @name1 = name1
    @name2 = name2
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..12).each do |i| 
      4.times {@cups[i] << :stone unless i == 6} #fill all the cups except 6 and 13 with stones
    end
  end

  def valid_move?(start_pos)
    raise ArgumentError.new('Invalid starting cup') unless start_pos.between?(0,12) && start_pos != 6
    raise ArgumentError.new('Starting cup is empty') if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
      # start_pos -= 1 if start_pos.between?(1,6) #convert 1-index from player input to 0-index of Ruby code
      valid_move?(start_pos)
    
    stones = @cups[start_pos]
    @cups[start_pos] = []
    next_pos = start_pos

    until stones.empty?
      # p "next pos: #{next_pos}"
      # p "stones: #{stones}"
      next_pos = (next_pos + 1) % 14
      if next_pos == 6 && current_player_name == name2 
        next_pos = (next_pos + 1) % 14 #skip store1 if current_player is player2
      elsif next_pos == 13 && current_player_name == name1
        next_pos = (next_pos + 1) % 14 
      else
        @cups[next_pos] << stones.pop
      end
      # p stones.empty?
      # p "stones: #{stones}"
    end
    
    render
    # p next_pos
    next_turn(next_pos)
    
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].length == 1 #land in cup that had 0 stones (and now has 1 stone added to it)
      return :switch
    else #land in cup with stones already in it
      return ending_cup_idx
    end
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..5).all? {|i| @cups[i].empty?} || (7..12).all? {|j| @cups[j].empty?}
  end

  def winner
    if @cups[6].length > @cups[13].length
      return name1
    elsif @cups[6].length < @cups[13].length
      return name2
    else
      return :draw
    end
  end
end
