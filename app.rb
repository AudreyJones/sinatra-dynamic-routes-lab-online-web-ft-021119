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
        binding.pry
      @empty = @empty + @phrase
      @empty
    end

  end
end
