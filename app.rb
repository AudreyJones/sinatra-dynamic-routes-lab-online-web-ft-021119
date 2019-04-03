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
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2'
end
  do |oper,num1,num2|
  #   binding.pry
  #   @oper = params[:operation]
  #   @num1 = (params[:number1]).to_i
  #   @num2 = (params[:number2]).to_i
  #
  #
  #   @num1(@oper)@num2
  # end
end
