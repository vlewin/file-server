require "rack"
require 'rack/rewrite'

use Rack::Auth::Basic, "Please Sign In" do |username, password|
  [username, password] == ['username', 'password']
end

use Rack::Rewrite do
  rewrite '/', '/index.html'
end

run Rack::Directory.new('public')
