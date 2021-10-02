
class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    anagram_word = word.chars
    possible_anagrams.filter do |w|
      w.chars.sort == anagram_word.sort
    end
  end
end