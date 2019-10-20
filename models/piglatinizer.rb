require 'pry'
class PigLatinizer < Sinatra::Base
  
  def can_piglatin?(text)
    !text.match(/aeiouAEIOU/)
  end

  def prep_for_piglatin(text)
  binding.pry

  end

end