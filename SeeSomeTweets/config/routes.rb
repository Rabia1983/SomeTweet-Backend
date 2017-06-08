Rails.application.routes.draw do
  resources :tweets

    root 'mytweets#new'
  post 'gettweet'  => 'mytweets#gettweets'
 # get 'showmetweet/:kind',to: 'mytweets#showmetweet'
  post 'showmetweet',to: 'mytweets#showmetweet'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
