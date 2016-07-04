require 'action_view/helpers'
require 'john_hancock/rails/form_builder'


module JohnHancock
  module Rails
    module FormHelper
      def self.included(base)
        ActionView::Helpers::FormBuilder.instance_eval do
          include FormBuilder
        end
      end
    end
  end
end

ActionView::Base.send :include, JohnHancock::Rails::FormHelper
