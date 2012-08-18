require 'test_helper'

class ApiTest < ActionDispatch::IntegrationTest
  def json
    JSON.parse(response.body).try :with_indifferent_access
  end
end
