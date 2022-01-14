ENV['APP_ENV'] = 'test'

require_relative '../myapp.rb'
require 'minitest/autorun'
# require 'test/unit'
require 'rack/test'
# class HelloWorldTest < Test::Unit::TestCase
#   include Rack::Test::Methods

#   def app
#     Sinatra::Application
#   end

#   def test_myapp
#     get '/'
#     assert last_response.ok?
#   end
# end

include Rack::Test::Methods

def app
  Sinatra::Application
end

describe 'The HelloWorld App' do

  it "says hello" do
    get '/'
    last_response.ok?
  end
end
