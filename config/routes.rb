Rails.application.routes.draw do
  resources :project_attachments


	resources :projects do
         resources :assets
    end
  #resources :assets

  resources :public_repositories

  resources :publications

  resources :data_sets

  resources :software_parameters

  resources :softwares

  resources :data_processings

  resources :data_processing_types

  resources :data_set_types

  resources :experiments

  resources :experiment_details

  resources :samples

  resources :diseases

  resources :platforms

  resources :molecules

  resources :cell_types

  resources :protocols

  resources :tissues

  resources :organisms

 # get 'static_pages/home'

  #get 'static_pages/help'
  
  #get 'static_pages/about'
  
  #get 'static_pages/contact_us'
  
     resources :sessions, only: [:new, :create, :destroy]

  
  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact_us', to: 'static_pages#contact_us', via: 'get'
  match '/new_user',  to: 'users#new',            via: 'get'
  match '/new_project',  to: 'projects#new',            via: 'get'
  match '/projects',  to: 'projects#index',            via: 'get'
  match '/users',  to: 'users#index',            via: 'get'
  match '/experiments',  to: 'experiments#index', via: 'get'
  match '/samples',  to: 'samples#index',            via: 'get'
  match '/organisms',  to: 'organisms#index',            via: 'get'
  match '/protocols',  to: 'protocols#index',            via: 'get'
  match '/cell_types',  to: 'cell_types#index',            via: 'get'
  match '/molecules',  to: 'molecules#index',            via: 'get'
  match '/platforms',  to: 'platforms#index',            via: 'get'
  match '/tissues',  to: 'tissues#index',            via: 'get'
  match '/diseases',  to: 'diseases#index',            via: 'get'

  match '/data_set_types',  to: 'data_set_types#index',            via: 'get'
  match '/data_sets',  to: 'data_sets#index',            via: 'get'
  match '/softwares',  to: 'softwares#index',            via: 'get'
  match '/software_parameters',  to: 'software_parameters#index',            via: 'get'
  match '/data_processings',  to: 'data_processings#index',            via: 'get'
  match '/data_processing_types',  to: 'data_processing_types#index',            via: 'get'


  match '/publicaions',  to: 'publications#index',            via: 'get'
  match '/public_repositories',  to: 'public_repositories#index',            via: 'get'


  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'


#this route is for file downloads  
#match "assets/get/:id" => "assets#get", :as => "download" ,   via: 'get'
#match 'projects/get/:id' => 'projects#get', :as => 'download_sftp' 
#match 'projects/get/:id'=>'download_sftp'
  #  get 'projects/get/:id' => "projects#get", as: 'download_sftp'
    
get 'projects/:id/download' => 'projects#download', :as => 'sftp_download_project'
get 'data_sets/:id/download' => 'data_sets#download', :as => 'sftp_download_data_set'
get 'data_processings/:id/download' => 'data_processings#download', :as => 'sftp_download_data_processing'



  resources :projects

  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
