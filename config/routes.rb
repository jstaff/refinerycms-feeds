Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :feeds do
    resources :feeds, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :feeds, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :feeds, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
