Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    match "/pop_up_manager" => "pop_up_manager#index"
  end
end
