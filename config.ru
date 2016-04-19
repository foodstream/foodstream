# This file is used by Rack-based servers to start the application.
require 'rack'
require 'rack/cors'
use Rack::Cors do
  allow do
    origins 'https://foodstrea.am', 'https://sheltered-wildwood-38449.herokuapp.com', 'localhost:3000'
    resource '*', :headers => :any, :methods => [:get, :post, :patch, :put, :delete, :options]
  end
end

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
