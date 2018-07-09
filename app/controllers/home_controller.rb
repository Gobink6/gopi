class HomeController < ApplicationController
TOKEN = "secret"
  # before_action :check_logged_in?, except: ['index', 'login']
# before_filter :login
 #before_action :login
  
  def new

  end
def fetch
  #Item.select("username, password").where( .... )
   #render json:   [user.as_json(only: [:username, :role, :email,])]
   #user = User.where(username: params[:username], password: params[:password]).first
  # if user.present?
   #render json: user.as_json(only: [:username, :email, :role]), status: :create
  # render json: User.all
  # screenone = Screenone.new(mod: params[:mod], power: params[:power], gen: params[:gen], rotor: params[:rotor], wind: params[:wind], pitch: params[:pitch])
    ##else
    #  render json: {message: 'Invalid data'}
   # end
end
  def login
    user = User.where(username: params[:username], password: params[:password]).first
   # user = User.where(user_params)
    if user.present?
    # if user.active == true
  #  render json: @user = User.where(username: params[:username], password: params[:password]).first

  #belongs_to :user, :select => [:username]
   
       render json:   [user.as_json(only: [:username, :role, :email,])]
    #Item.select("username, password").where( .... )
       # render json: {message: 'Login Successful'}
     # else
       # render json: {message: 'User Deactivated'}
     # end
    else
      render json: {message: 'Invalid data'}
    end
  end
 def login1
   # render :json  => User.pluck(:username)
 # render json: {username: User.pluck(:username)}
 #render json: {username: User.pluck(:username), role: User.pluck(:role)}
  #render json: [{username:, role: User.pluck(:username, role)}]
  #render json: {data: User.pluck(:username)}
  render json: Spinner.where(millactive: false).as_json(only: [:windmill, :username, :windform])
    #.pluck(:windmill)}
  #render json: {status: true, data: User.pluck(:username)}

#render json: Spinner.pluck(:id, :millactive)
#Spinner.active.collect_column(:id)
# render json: {Spinner.all.as_json(only: [:username, :windform])}
 #render :json  => { :username => username.as_jason }

    # User.pluck(:username)
     #render json: @user = User.where(:username)
    # results = User.where(:username => (south..north), :email => (east..west)).select([:username, :email, :role])
 
   # user = User.where(user_params)
    #if user.present?
    # if user.active == true
  #  render json: @user = User.where(username: params[:username], password: params[:password]).first

  #belongs_to :user, :select => [:username]
   
       #render json:   [user.as_json(only: [:username, :role, :email])]
    #Spinner.select("username, password").where( .... )
       # render json: {message: 'Login Successful'}
     # else
       # render json: {message: 'User Deactivated'}
     # end
    #else
     # render json: {message: 'Invalid data'}
    
  end

  def users
  	
  end
  def register
#user  = User.new
   #user.username = (username: params)
#user = User.new do |u|
 # u.username = "don" 
# user = User.new(user_params)
  
  user = User.new(username: params[:user], password: params[:password], email: params[:email], role: params[:role])
    #user = User.new(username: params[:user])
    #user.password_digest = data[:info][:password]
   if user.save 
      render json: {massage: 'Register successful'}
     else
      render json: {massage: 'Register unsuccessfull'}
end   
end
 def spinner
#user  = User.new
   #user.username = (username: params)


  user = Spinner.new(username: params[:username], windform: params[:windform], windmill: params[:windmill], millactive: params[:millactive])
    #user = User.new(username: params[:user])
   
   if user.save 
      render json: {massage: 'Register successful'}
     else
      render json: {massage: 'Register unsuccessfull'}
end   
end
  def customer
user = params[:user]
  mill = params[:windmill2]
 name = mill.split(/[\s,']/) 
x = name.length
 n = 0
for i in 1..x do
  na = name[n]
  spinner = Spinner.where(windmill: na )
  if spinner.present?
  user = Spinner.find_by(windmill: na)
  user.millactive = '1'
  user.save
     else
       puts "no"
    end
 n += 1

 
 end


puts "Done!"


  end

  def logout
    session[:logged_in] = nil
    render json: {status: true}
  end

  def check_logged_in?
    ## check if user is logged in
    if session[:logged_in] != true
      redirect_to root_url
    end
  end
    
end
