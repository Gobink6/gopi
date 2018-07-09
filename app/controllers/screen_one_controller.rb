class ScreenOneController < ApplicationController
	 def screen_one
  screen1s = Screen_ones.new(mod: params[:mod], power: params[:power])
  # @screen1s = Screen1s.new(Mod: params[:mod], Power: params[:power], Gen: params[:gen], Rotor: params[:rotor], Wind: params[:wind], Pitch: params[:pitch])
   if screen1s.save 
      render json: {massage: 'Register successful'}
     else
      render json: {massage: 'Register unsuccessfull'}
end   
end 
end
