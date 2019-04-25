require "cucumber"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "yaml"
require "rspec"
require 'pry'
require 'httmultiparty'


api_configs = YAML.load_file('./config/api.yml')

$profile = ENV['PROFILE']

$api = api_configs[$profile]

# Ignore SSL certificate for API requests
HTTParty::Basement.default_options.update(verify: false)