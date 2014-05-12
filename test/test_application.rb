require_relative "test_helper"
require_relative "test_controller"

class TestApp < Ogeezy::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class OgeezyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/example/route"

    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end
end