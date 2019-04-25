require 'rspec'
require 'faker'
require 'json'
require 'yaml'
require 'pry'
require 'httparty'
require 'httmultiparty'
require 'date'
require 'nokogiri'
require 'savon'
require 'soap-object'
require 'rubygems'

Faker::Config.locale = 'pt-BR'
wsdl_configs = YAML.load_file('./config/wsdl.yml')
api_configs = YAML.load_file('./config/api.yml')
#db_configs = YAML.load_file('./config/db.yml')

World(SoapObject::Factory)
$profile = ENV['PROFILE']
$endpoint = wsdl_configs[$profile]
$api = api_configs[$profile]
#$db = db_configs[$profile]

# Ignore SSL certificate for API requests
HTTParty::Basement.default_options.update(verify: false)