ENV['TAZA_ENV'] = "isolation" if ENV['TAZA_ENV'].nil?
require 'rubygems'
require 'rspec'
require 'mocha'

$user = "weimar27"
$password = "t3st1ng"

lib_path = File.expand_path("#{File.dirname(__FILE__)}/../lib/sites")
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include?(lib_path)

RSpec.configure do |config|
  config.mock_framework = :mocha
end

describe "mocking with RSpec" do
  it "passes when it should" do
    receiver = mock('receiver')
    receiver.expects(:message).once
    receiver.message
  end
end