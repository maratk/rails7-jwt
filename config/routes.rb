Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'hello', to: HelloController.action(:index)
  get 'railsapi', to: ApiController.action(:index)
  mount Rails7Jwt::Currency => '/api' 
  # Defines the root path route ("/")
  # root "articles#index"
end
