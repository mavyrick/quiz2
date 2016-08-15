Rails.application.routes.draw do
  # get 'support_request/create'
  #
  # get 'support_request/destroy'
  #
  # get 'support_request/edit'
  #
  # get 'support_request/index'
  #
  # get 'support_request/new' => "SupportRequest#new"
  #
  # get 'support_request/show'
  #
  # get 'support_request/update'

  post '/support_requests' => "support_request#create"

delete '/support_requests/:id' => "support_request#destroy"

get '/support_requests/:id/edit' => "support_request#edit", as: :edit_support_request

get '/support_requests' => 'support_request#index'

get '/support_requests/new' => "support_request#new"

get '/support_requests/search' => "support_request#search"

get '/support_requests/search_button' => "support_request#search_button"

get '/support_requests/:id' => "support_request#show", as: :support_request

patch '/support_requests/:id' => "support_request#update"

root "support_request#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
