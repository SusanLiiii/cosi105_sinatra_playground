# test/root_test.rb
ENV['APP_ENV'] = 'test'

require_relative '../app.rb'
require 'minitest/autorun'
require 'rack/test'
require './models/user'


include Rack::Test::Methods

def app
  Sinatra::Application
end

describe 'The HelloWorld App' do

  it "says hello" do
    get '/'
    assert last_response.ok?
    assert_equal last_response.body, 'Hello!'
  end
end