Rails.application.routes.draw do
  namespace 'api' do
    get '/tasks' => 'tasks#index'
    post '/tasks' => 'tasks#create'
    get '/tasks/:task_id' => 'tasks#show'
    post '/tasks/:task_id/update' => 'tasks#update'
    post '/tasks/:task_id/delete' => 'tasks#delete'
    post '/tasks/:task_id/completed' => 'tasks#completed'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
