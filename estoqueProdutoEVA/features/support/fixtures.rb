require 'json'
require 'singleton'

class Fixtures
  include Singleton

  def load(fixture_name)
    fixture_path = get_fixture_path(fixture_name)
    return File.read(fixture_path)
  end

  def load_json(fixture_name)
    fixture_path = get_fixture_path(fixture_name)
    file = File.read(fixture_path)
    return JSON.parse(file)
  end

  def load_csv(fixture_name)
    fixture_path = get_fixture_path(fixture_name)
    return CSV.read(fixture_path, { :col_sep => ';'})
  end

  def load_sql(fixture_name)
    fixture_path = './fixtures/sql/' + fixture_name
    return File.read(fixture_path)
  end

  def load_file(fixture_name)
    fixture_path = './fixtures/file/' + fixture_name
    return File.new(fixture_path)
  end

  def get_fixture_path(fixture_name)
    fixture_path = './fixtures/'+ $profile + '/' + fixture_name
    if(!File.exist?(fixture_path))
      fixture_path = './fixtures/default/body/' + fixture_name
    end
    return fixture_path
  end
end
