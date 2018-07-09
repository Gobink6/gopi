class ArticlesController < ApplicationController
 # before_filter :authenticate
   #http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
	def new

  end
  def create
  
  	@article = Article.new(article_params)
 
 
   if @article.save
    redirect_to @article
  else
    render 'new'
  end
  end
   def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
end
  private
    def article_params
    	params.require(:article).permit(:title, :text)
  end
#  def authenticate
 # authenticate_or_request_with_http_basic do |username, password|
 #   username == "foo" && password == "bar"
 # end
end
