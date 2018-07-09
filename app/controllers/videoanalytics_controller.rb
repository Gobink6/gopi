class VideoanalyticsController < ApplicationController
	def store
		 user = Videoanalytic.new(noplate: params[:noplate], intime: params[:intime], status: "In")
		  #nopl = Videoanalytic.uniq.pluck(:noplate)
    if user.save 
  		
  		# puts nopl
      render json: {massage: 'Data store'}
     else
      render json: {massage: 'Error'}
end
end
def check
	#user  = Videoanalytic.where(noplate: params[:noplate], outime: params[:outime]).first
	analytics = Videoanalytic.where(noplate: params[:noplate] )
	 na = params[:noplate]
	 ot = params[:outtime]
  if analytics.present?
user = Videoanalytic.find_by(noplate: na)
  user.status = "out"
  user.outtime = ot
  user.save
  else
       puts "no"
    end
	 end
	 def insatuts
	 	video = Videoanalytic.all
	 		#@datadb =Facedet.all 
	 		
		render json:  video.as_json(only: [:noplate, :intime, :status])
	 	#if video.present?
	 	#render json:  [:noplate, :intime, :status)]
	 	 #render json: Videoanalytic.all
	 	#else
	 		# render json: {massage: 'Error'}
	 		#end
	 end
end
