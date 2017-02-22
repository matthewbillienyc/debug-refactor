Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stack_trace' => 'sample#stack_trace'
  get '/logging' => 'sample#logging'
  get '/search_byebug' => 'sample#byebug_search'
  get '/postman' => 'sample#postman'
  get '/front_end' => 'sample#front_end'
  get '/companies' => 'sample#companies'
  get '/meta_data' => 'sample#meta_data'
end
