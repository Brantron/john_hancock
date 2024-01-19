module JohnHancock
  module Rails
    module FormBuilder
      include ActionView::Helpers::TagHelper

      def signature_canvas(options = {})
        options.merge!(id: 'JohnHancock-canvas')
        content_tag(:canvas, nil, options)
      end

      def hidden_signature_field(attribute)
        hidden_field(attribute.to_sym, id: 'JohnHancock-hidden')
      end

      def signature_field(attribute, options = {})
        tags = []
        tags << signature_canvas(options)
        tags << hidden_signature_field(attribute)
        tags.join(' ').html_safe
      end
    end
  end
end

JohnHancock::FormBuilder = JohnHancock::Rails::FormBuilder
