Rails.application.routes.draw do

  devise_for :users, skip: [:registrations]
  
  # Recreates the Devise registrations routes
  # They act on a singular user (the signed in user)
  # Add the actions you want in 'only:'
  devise_scope :user do
    resource :users,
             only: [:edit, :update, :destroy],
             controller: 'devise/registrations',
             as: :user_registration do
      get 'cancel'
    end
  end

    authenticated :user do   
      # Seting up admin scope for :users
      # so as to not conflict with the routes from devise.
      # These routes should give users with the admin role
      # the abbility to edit info for all other users.
      scope "/admin" do
        resources :users do
        end
      end
      
      resources :volunteers do
      end
    
      resources :groups do
        # member do
        #   get 'print'
        # end
        collection do
          post 'update_kid_assignment'
          post 'update_volunteer_assignment'
          get 'print_sign_outs'
        end
      end
      
      resources :kids do
        get 'register', on: :new
        collection do
          post 'confirm'
          get 'print_all_kids'
        end
      end

      resources :locations do
        collection do
          post 'update_volunteer_assignment'
        end
      end

      resources :families do
        collection do
        end
      end

      resources :guardian do
        collection do
        end
      end
      
      root to: 'kids#index', as: :authenticated_root
    end
  

    #TODO: set up signed out root to lead to registration form
    root to: redirect('users/sign_in')
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
