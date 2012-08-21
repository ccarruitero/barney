require 'acceptance_test_helper'

class HomeTest < AcceptanceTest
  test 'home' do
    visit root_path
    assert_equal root_path, current_path
    assert_have_css page, 'body'
  end

  test 'poltergeist' do
    Capybara.current_driver = Capybara.javascript_driver

    visit root_path
    assert page.evaluate_script '!!true'
  end
end
