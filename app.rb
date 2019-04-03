require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do |name|
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do |number|
    @number = (params[:number]).to_i
    @result = (@number*@number).to_s
    @result
  end

  get '/say/:number/:phrase' do |number,phrase|
    @phrase = params[:phrase]
    @number = (params[:number]).to_i
    @empty = ""
    @number.times do
      @empty = @empty + @phrase
    end
    @empty
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    # binding.pry
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
end
