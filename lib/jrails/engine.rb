require 'rails'
require 'active_support'

module JRails
  class Engine < Rails::Engine
    initializer 'jrails.initialize' do
      ActiveSupport.on_load :action_controller do
        require 'jrails/on_load_action_controller'
      end

      ActiveSupport.on_load :action_view do
        require 'jrails/on_load_action_view'
      end
    end
  end
end
