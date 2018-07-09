Rails.application.routes.draw do

  #root 'home#index'
   #root  'welcome#index'
 post '/login' => 'home#login'
 post '/login1' => 'home#login1'
 get '/login1' => 'home#login1'
 post '/spinner' => 'home#customer'
 post '/spinners' => 'home#spinner'
 post '/image' => 'facedet#register'
  post '/check' => 'facedet#check'
  get '/create' => 'facedet#index'
  post '/time' => 'facedet#time'
  post '/store' => 'videoanalytics#store'
   post '/checks' => 'videoanalytics#check'
    get '/instatus' => 'videoanalytics#insatuts'
  #get '/logout' => 'home#logout'
  #post '/users' => 'home#users'
  post '/fetch' => 'home#fetch'
   get '/fetch' => 'home#fetch'
  get '/articles' => 'articles#new'
 get '/listview' => 'articles#index'
 post '/listview' => 'articles#index'
 get '/destroy' => 'articles#destroy'
  post '/register' => 'home#register'
  post '/customers' => 'screenone#customers'
# post '/screen' => 'screen1s#screen1s'
  post '/conss' => 'conss#conss'
  post '/screen' => 'screenone#screenone'
   post '/fetchs' => 'screenone#fetchs'
  #get 'home/index'
  #article GET    /articles/:id(.:format)      articles#show
  #get '/articles/:id(.:format)' => 'articles#show'
  #get '/:id(.:format)'  =>   'articles#index'


 # get 'users' => 'home#users'
 # get 'customers' => 'home#customers'
 resources :articles 
 #get '/:id(.:format)'  =>   'articles#show'
 
  #root 'welcome#index'
end
