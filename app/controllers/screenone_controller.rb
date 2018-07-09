class ScreenoneController < ApplicationController
	 def screenone
	 	
 screenone = Screenone.new(mod: params[:mod], power: params[:power], gen: params[:gen], rotor: params[:rotor], wind: params[:wind], pitch: params[:pitch])
  # @screen1s = Screen1s.new(Mod: params[:mod], Power: params[:power], Gen: params[:gen], Rotor: params[:rotor], Wind: params[:wind], Pitch: params[:pitch])
   if screenone.save 
      render json: {massage: 'Register successful'}
     else
      render json: {massage: 'Register unsuccessfull'}
end   
end 
  def fetchs
  	screenone = Screenone.where(mod: params[:mod], power: params[:power]).first
    if screenone.present?
       render json:   [screenone.as_json(only: [:mod, :power, :gen, :rotor, :wind, :pitch])]
     else
      render json: {message: 'Invalid data'}
    end
  end
  def customers
  
   #letters = Array.new([[x]])
   #arr.delete_if{|e| e.length == 0}
  #x = gets.chomp.arr


   end
end
