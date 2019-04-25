require 'rspec'
require 'cucumber'
require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require 'cpf_faker'
require 'roo'
require 'pry'
require 'allure-cucumber'
require_relative 'page_helper.rb'
require_relative 'helper.rb'


include AllureCucumber::DSL

Faker::Config.locale = 'pt-BR'
World Capybara::DSL
World(Pages)
World(Helper)

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT_TYPE}.yml")



Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('headless')
    option = ::Selenium::WebDriver::Chrome::Options.new(args: ['--headless', '--disable-gpu', '--window-size=1600,1024'])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)

  elsif BROWSER.eql?('no_headless')
    option = ::Selenium::WebDriver::Chrome::Options.new(args: ['--disable-infobars', 'window-size=1600,1024'])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)

  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, browser: :firefox)
    
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 10
  config.app_host = CONFIG['url_default']
end
  
Cucumber::Core::Test::Step.module_eval do
  def name
  return text if text == 'Before hook'
  return text if text == 'After hook'
  "#{source.last.keyword}#{text}"
  end
end

AllureCucumber.configure do |c|
	c.output_dir = "/results/reports_allure"
	c.clean_dir  = false
end