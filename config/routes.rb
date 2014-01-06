

Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    match "/pop_up_manager" => "pop_up_manager#index"
    match "/pop_up_manager/new" => "pop_up_manager#new"
    match "/pop_up_manager/create" => "pop_up_manager#create"
    match "/pop_up_manager/date_based_active" => "pop_up_manager#date_based_active"
    match "/pop_up_manager/daily_active" => "pop_up_manager#daily_active"


    resources :pop_up_manager do

     collection do
       get :show_popup
     end

     member do
       put :edit
       post :update
     end


    end
  end

  resources :pop_up_manager do

     collection do
       get :show_popup
     end
   end

end
