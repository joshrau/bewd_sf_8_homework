class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
  	@choice = params[:id].to_i
  	@comp_choice = rand(3)
   

	if  @choice == 0 && @comp_choice == 2 
		@result = 'Win'
	elsif @choice == 0 && @comp_choice == 1
		@result = 'Lose'
	elsif @choice == 1 && @comp_choice == 0
		@result = 'Win'
	elsif @choice == 1 && @comp_choice == 2
		@result = 'Lose'
	elsif @choice == 2 && @comp_choice == 1
		@result = 'Win'
	elsif @choice == 2 && @comp_choice == 0
		@result = 'Lose'
	else
		@result = 'Draw'
	end

  end

end