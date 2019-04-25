require 'rspec'
require 'faker'
require 'json'
require 'yaml'
require 'pry'
require 'date'
require 'nokogiri'
require 'savon'
require 'httparty'
#require 'ruby-oci8'


Faker::Config.locale = 'pt-BR'
db_configs = YAML.load_file('./config/db.yml')

$profile = ENV['PROFILE']

api_configs = YAML.load_file('./config/api.yml')
$api = api_configs[$profile]
$db = db_configs[$profile]

# Ignore SSL certificate for API requests
HTTParty::Basement.default_options.update(verify: false)