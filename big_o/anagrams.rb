require 'byebug'
def first_anagram?(str1, str2)
  possible_anagrams = str1.chars.permutation.to_a.map(&:join)
  possible_anagrams.include?(str2)
end

def second_anagram?(str1, str2)
  arr1 = str1.chars.sort
  arr2 = str2.chars.sort
  temp2 = arr2.dup
  temp1 = arr1.dup

  arr1.each do |char|
    if arr1[0] == arr2[0]
      temp2.shift
      temp1.shift
    end
  end

  temp2.empty?
end

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char{|char| hash1[char] += 1}
  str2.each_char{|char| hash2[char] += 1}

  hash1 == hash2
end
