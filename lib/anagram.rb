require 'pry'
class Anagram
  attr_accessor :word 
  
  def initialize(word)
    @word = word
  end 
  
  def match(%w(string)) 
    #binding.pry 
    #string.delete_prefix('"').delete_suffix('"')
    #binding.pry
    string.select do |string_word|
      string_word.split("").sort == @word.split("").sort 
    end
  end 
  
end 