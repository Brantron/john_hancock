require 'test_helper_integration'

class JohnHancockIntegrationTest < ActionDispatch::IntegrationTest
  describe 'create a form with helper method' do
    before do
      visit '/users/new'
    end
    it 'canvas renders' do
      page.assert_selector('canvas#JohnHancock-canvas')
    end

    it 'hidden field renders' do
      page.has_css?('#JohnHancock-hidden', visible: false)
    end
  end
end
