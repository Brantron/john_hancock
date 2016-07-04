module JohnHancock
  module Rails
    class Engine < ::Rails::Engine
      require 'jquery-rails'
      initializer 'john_hancock.form_helpers' do |_app|
        ActiveSupport.on_load(:action_view) { require 'john_hancock/rails/form_helper' }
      end
    end
  end
end
