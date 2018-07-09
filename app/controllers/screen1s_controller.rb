class Screen1sController < ApplicationController
	 def screen1s
  screen1s = Screen1s.new(Mod: params[:mod], Power: params[:power])
  # @screen1s = Screen1s.new(Mod: params[:mod], Power: params[:power], Gen: params[:gen], Rotor: params[:rotor], Wind: params[:wind], Pitch: params[:pitch])
   if screen1s.save 
      render json: {massage: 'Register successful'}
     else
      render json: {massage: 'Register unsuccessfull'}
end   
end 
end
