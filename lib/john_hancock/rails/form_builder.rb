module JohnHancock
  module Rails
    module FormBuilder
      include ActionView::Helpers::TagHelper

      def signature_field(attribute)
        tags = []
        tags << content_tag(:canvas, nil, class: 'Signature-visable Signature-pad', id: 'JohnHancock-canvas')
        tags << hidden_field(attribute.to_sym, id: 'JohnHancock-hidden')
        tags.join(',').html_safe
      end
    end
  end
end

JohnHancock::FormBuilder = JohnHancock::Rails::FormBuilder
