def sql_fixture_path scenario
    @sql_fixture = scenario.feature.location.file.to_s.sub('.feature', '-fixture.sql')
end
  
def sql_cleanup_path scenario
    @sql_fixture = scenario.feature.location.file.to_s.sub('.feature', '-cleanup.sql')
end
  
def run_sql_file file_path
    if File.file?('fixtures/sql/' + file_path)
      $logger.debug "Running sql script #{file_path}"
      DBClient.instance.run_fixture(file_path)
    end
end
  
def run_sql_fixture scenario
    run_sql_file(sql_fixture_path(scenario))
end
  
def run_sql_cleanup scenario
    run_sql_file(sql_cleanup_path(scenario))
end
  
Before do |scenario|
    run_sql_cleanup(scenario)
    run_sql_file('default-cleanup.sql')
    run_sql_file('default-fixture.sql')
    run_sql_fixture(scenario)
end
  
  After do |scenario|
    run_sql_cleanup(scenario)
    run_sql_file('default-cleanup.sql')
  end
  