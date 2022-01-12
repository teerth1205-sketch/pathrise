Rails.application.routes.draw do
  resources :job_pos
  resources :job_posts
  resources :job_postings
  resources :jobs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
