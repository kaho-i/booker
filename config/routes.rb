Rails.application.routes.draw do
  get 'homes/top' , to: 'home#top'
  constraints(subdomain: /(bookers-level1)/) do
    get '/' , to:'home#top'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
