require 'pry'
class Anagram
  attr_accessor :word 
  
  def initialize(word)
    @word = word
  end 
  
  def match(string) 
    string.delete_prefix('"').delete_suffix('"')
    binding.pry
    %w(string).select do |string_word|
      string_word.split("").sort == @word.split("").sort 
    end
  end 
  
end 