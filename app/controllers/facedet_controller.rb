class FacedetController < ApplicationController
	def index
		@datadb =Facedet.all 
		render json:  [@datadb.as_json(only: [:img, :imgg, :imggg, :created_at])]
	end
	def register
		 user = Facedet.new(imagone: params[:imageo], imagtwo: params[:images], imagthree: params[:imaget], created_at: params[:created])
    #user = User.new(username: params[:user])
    #user.password_digest = data[:info][:password]
   if user.save 
      render json: {massage: 'Register successful'}
     else
      render json: {massage: 'Register unsuccessfull'}

	end
end
 def check
    user = Facedet.where(imagone: params[:imageo])
    if user.present?
  
       render json:  {message:'car present'}
  else
      render json: {message: 'No car available in this id'}
    end
  end
# def time
 #   user = Facedet.where(imagone: params[:imageo])
  #  if user.exists?
  #render json:  [user.as_json(only: [:created_at])]
      
  #    render json: {message: 'No car available in this id'}
   # end
  #end
end
 