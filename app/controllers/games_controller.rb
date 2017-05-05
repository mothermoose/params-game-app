class GamesController < ApplicationController
def game
  if params["your_name"]
    @name = params["your_name"].upcase  

    if @name.first.upcase == "A"
      @message = "Hey your name starts with an A!"
    end
  end 
 end

 def guess
  @user_guess = params["this_is_a_key"].to_i
  winning_number = 42

  if winning_number > @user_guess
    @answer_message = "too high."
  elsif winning_number < @user_guess
    @answer_message = "too low."
  elsif winning_number == @user_guess
    @answer_message = "right on the money!!!"
  end 
 end 

 def form_show

 end 

 def form_send
  @user_guess = params["form_message"].to_i
  winning_number = 42

  if winning_number > @user_guess
    @answer_message = "too high."
  elsif winning_number < @user_guess
    @answer_message = "too low."
  elsif winning_number == @user_guess
    @answer_message = "right on the money!!!"
  end 
  render 'form_show.html.erb'
end 

end