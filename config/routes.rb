Rails.application.routes.draw do
  controller :pages do
    get :index
    get :add_account
    get :tweets
  end
  root 'pages#index'
end
