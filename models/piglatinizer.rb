require 'pry'
class PigLatinizer < Sinatra::Base


  def piglatinize(text)
    # @text = text

    if @text.split(" ").length == 1
      @text =join_to_ay(text)
    else 
      @text =join_to_pigltn(text)
    end
  end

  def get_consonants(char)
    binding.pry          

    !char.match(/[aAeEiIoOuU]/) #scan for first characters before fisrt vowel
    
  end

  def move_chars(term)
    # move consonant text to array01
    # term starts with vowel
    if !get_consonants(term[0])
      term = term + "w"
    # term starts with 3 consonants
    elsif get_consonants(term[0]) && get_consonants(term[1]) && get_consonants(term[2])
      term = term.slice(3..-1) + term.slice(0,3)
    # term starts with 2 consonants
    elsif get_consonants(term[0]) && get_consonants(term[1])
      term = term.slice(2..-1) + term.slice(0,2)
    # term starts with 1 consonant
    else
      term = term.slice(1..-1) + term.slice(0)
    end
    term << "ay"
    arr1.shift
    # move the remaining to array02
  end

  def join_to_ay
    # join array01 with "ay"
  end

  def join_to_pigltn(phrase)
    # connect the new terms
    phrase.split.collect { |term| piglatinize_term(term) }.join(" ")

  end


end