World(Helper)

Before do
	Capybara.reset_sessions!
end

After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/','_')
  scenario_name = scenario.name.delete(',', '')
  scenario_name = scenario.name.delete('(', '')
  scenario_name = scenario.name.delete(')', '')
  scenario_name = scenario_name.delete('#', '')

  if scenario.failed?
    take_screenshot(scenario_name, 'failed')
  else
    take_screenshot(scenario_name, 'passed')
  end
end