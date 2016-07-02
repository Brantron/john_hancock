require 'spec_helper'

module Johnhancock
  module FormHelper
    def signature_field
      ''
    end
  end
end

describe Johnhancock do
  it 'has a version number' do
    refute_nil ::Johnhancock::VERSION
  end

  describe '#signature_field' do
    let(:view) do
      Object.new.tap do |o|
        o.extend Johnhancock::FormHelper
      end
    end

    it 'returns a string' do
      assert_equal String, view.signature_field.class
    end
  end
end
