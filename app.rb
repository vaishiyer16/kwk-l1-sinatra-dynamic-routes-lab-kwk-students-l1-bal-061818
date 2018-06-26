require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  get '/square/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    (number1**number2).to_s
  end
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_i
    @phrase * @number
  end
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      @number1 + @number2
    elsif @operation == "subtract"
      @number1 - @number2
    elsif @operation == "multiply"
      @number1 * @number2
    else
      @number1 / @number2
    end
      
      
      
end
