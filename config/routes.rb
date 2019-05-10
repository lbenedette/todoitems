Rails.application.routes.draw do
  namespace 'api' do
    get '/tasks' => 'tasks#index'
    post '/tasks' => 'tasks#create'
    get '/tasks/:taskId' => 'tasks#show'
    post '/tasks/:taskId/update' => 'tasks#update'
    post '/tasks/:taskId/delete' => 'tasks#destroy'
    post '/tasks/:taskId/completed' => 'tasks#completed'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
