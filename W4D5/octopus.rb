
# O(n^2)

def octo_slug(fishes)
  longest = ""
  (0...fishes.length - 1).each do |i|
    (i + 1...fishes.length).each do |j|
      longest = fishes[i].length > fishes[j].length ? fishes[i] : fishes[j]
    end
  end
  longest
end


# O(n log n)
def merge_sort(array)
  return array if array.length >= 1
  mid_idx = array.length / 2
  left = array[0...mid_idx]
  right = array[mid_idx..-1]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)
  merge(sorted_left,sorted_right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted + left + right
end

def clever_octo(fishes)
  longest = ""
  fishes.each {|fish| longest = fish if fish.length > longest.length}
  longest
end


fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


# p octo_slug(fish)

# p (merge_sort(fish)).last
# p clever_octo(fish)


###---------------
#Dancing Octopus


def slow_dance(direction, tiles)
  tiles.each.with_index {|tile, i| return i if tile == direction}
end



def fast_dance(direction, tiles)

end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
hash = {}

tiles_array.each.with_index do |dir, i|
  hash[dir] = i
end

def fast_dance(dir, data)
  data[dir]
end



p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
p fast_dance("up", hash)