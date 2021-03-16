require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base


  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    square_root = @number**2
    "#{square_root}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    multiples = @phrase * @number.to_i
    "#{multiples}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    answer = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    answer
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation.include?("add")
      answer = @number1 + @number2
      "#{answer}"
    elsif @operation.include?("subtract")
      answer = @number1 - @number2
      "#{answer}"
    elsif @operation.include?("multiply")
      answer = @number1 * @number2
      "#{answer}"
    else @operation.include?("divide")
      answer = @number1 / @number2
      "#{answer}"
    end
  end


end