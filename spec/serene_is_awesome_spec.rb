require File.expand_path '../spec_helper.rb', __FILE__

class TestSereneIsAwesome < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_index_load
    get '/'
    assert last_response.ok?
#    assert_equal "Hi, I'm Serene!", last_response.header
  end

end
