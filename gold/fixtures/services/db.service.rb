require 'oci8'
require 'sequel'
require 'singleton'

class DBClient
  include Singleton

def initialize()
    OCI8::BindType.default_timezone = :local
    $DB = Sequel.instance.connect("oracle://#{$db['gold.qa.user']}:#{$db['gold.qa.password']}@#{$db['gold.qa.url']}")
    
    puts "Conexão Aberta#{$DB}"
end
end

def run_fixture(fixture_name)
  sqls = Fixtures.instance.load_sql(fixture_name)
  sqls.split(/(\n)/).reject{|sql| sql.start_with?("--") || sql.strip.empty?}.each do |sql|
    @DB.run(sql.sub(';', '').strip)
end
end

