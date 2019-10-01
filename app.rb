require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @input_name = params[:name]
    @reversename = @input_name.reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @number = params[:number]
    @square = @number.to_i*@number.to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @answer = "#{@phrase}"
    @i = @number.to_i
    while @i >= 1
      @answer
      @i = @i-1
    end
    @answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == 'add'
      @answer = @number1 + @number2
    elsif @operation == 'subtract'
    elsif @operation == 'multiply'
    elsif @operation == 'divide'
    else
      "Sorry. Not applicable"
    end
    @answer
  end

end
