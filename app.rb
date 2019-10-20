require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    
    erb :user_input
  end

  post '/pl' do
    piglatined = PigLatinizer.new
    @piglatin = piglatined.plparams[:user_text]

    
    erb :results
  end

  
end