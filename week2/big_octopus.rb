fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
        'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(array)
  array.each_with_index do |fish1, idx1|
    longest = true
    array.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      longest = false if fish1.length < fish2.length
    end

    return fish1 if longest == true
  end
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }
    return self if length <= 1
    mid = self.length / 2


    left = self.take(mid).merge_sort(&prc)
    right = self.drop(mid).merge_sort(&prc)

    Array.merge(left, right, &prc)
  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1 then merged << left.shift
      when 0 then merged << left.shift
      when 1 then merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)
    merged
  end
end

def dominant_octopus(array)
  prc = Proc.new { |x, y| y.length <=> x.length }
  array.merge_sort(&prc).first
end

p dominant_octopus(fish)

def clever_octopus(array)
  longest = array.first
  i = 1

  while i < array.length
    longest = array[i] if array[i].length > longest.length
    i += 1
  end

  longest
end
