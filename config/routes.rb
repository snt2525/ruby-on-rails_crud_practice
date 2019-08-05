Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #게시판 부분
  get 'post/index' => 'post#index'
  get 'post/create' => 'post#create'
  post 'post/postdb' => 'post#postdb'

  get 'post/modify/:post_id' => 'post#modify'
  post 'post/update/:post_id' => 'post#update'

  get 'post/show/:post_id' => 'post#show'
  
  get 'post/delete/:post_id' => 'post#delete'

  #login 부분
  get 'login/login' => 'login#login'
  get 'login/loginCallback' => 'login#callback'

  #search
  get 'post/search' => 'post#search'
  get 'post/result' => 'post#result'
end
