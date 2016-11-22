Rails.application.routes.draw do
  # List all articles
  get 'articles', to: "articles#index"

  # Create a new article
  get 'articles/new', to: "articles#new", as: 'new'

  post 'articles', to: 'articles#create'

  # Show a single article
  get 'articles/:id', to: "articles#show", as: 'article'

  # Update article
  get 'articles/:id/edit', to: "articles#edit", as: 'edit'

  patch 'articles/:id', to: "articles#update"

 # Delete a task
 delete 'articles/:id', to: "articles#destroy", as: 'delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
