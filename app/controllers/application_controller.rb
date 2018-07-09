class ApplicationController < ActionController::Base
	#acts_as_token_authentication_handler_for User
	#http_basic_authenticate_with :name => "user", :password => "password" 
	#before_action :set_account, :authenticate
	### BEFORE
def model_params
      params.require(:users).permit(:username, :password)
 end
 
 
### AFTER
def model_params
      params.require(:users).permit(:user, :password)
 end
   # extend Encryptable
	 def show
    @article = Article.find(params[:id])
  end
  def index
    @articles = Article.all
  end
 def up
  change_column :millactive, default: true
end

def down
  change_column :millactive, default: false
end
  def new
  end

end
