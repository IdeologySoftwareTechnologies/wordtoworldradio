# == Route Map
#
#                    Prefix Verb   URI Pattern                        Controller#Action
#         new_admin_session GET    /admins/sign_in(.:format)          devise/sessions#new
#             admin_session POST   /admins/sign_in(.:format)          devise/sessions#create
#     destroy_admin_session DELETE /admins/sign_out(.:format)         devise/sessions#destroy
#            admin_password POST   /admins/password(.:format)         devise/passwords#create
#        new_admin_password GET    /admins/password/new(.:format)     devise/passwords#new
#       edit_admin_password GET    /admins/password/edit(.:format)    devise/passwords#edit
#                           PATCH  /admins/password(.:format)         devise/passwords#update
#                           PUT    /admins/password(.:format)         devise/passwords#update
# cancel_admin_registration GET    /admins/cancel(.:format)           devise/registrations#cancel
#        admin_registration POST   /admins(.:format)                  devise/registrations#create
#    new_admin_registration GET    /admins/sign_up(.:format)          devise/registrations#new
#   edit_admin_registration GET    /admins/edit(.:format)             devise/registrations#edit
#                           PATCH  /admins(.:format)                  devise/registrations#update
#                           PUT    /admins(.:format)                  devise/registrations#update
#                           DELETE /admins(.:format)                  devise/registrations#destroy
#        admin_confirmation POST   /admins/confirmation(.:format)     devise/confirmations#create
#    new_admin_confirmation GET    /admins/confirmation/new(.:format) devise/confirmations#new
#                           GET    /admins/confirmation(.:format)     devise/confirmations#show
#              admin_unlock POST   /admins/unlock(.:format)           devise/unlocks#create
#          new_admin_unlock GET    /admins/unlock/new(.:format)       devise/unlocks#new
#                           GET    /admins/unlock(.:format)           devise/unlocks#show
#

Rails.application.routes.draw do
  #devise_for :admins
  devise_for :admins, path: "admin", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
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
