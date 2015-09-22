require 'rspec'
require 'rspec/page-regression'
require 'capybara/rspec'
require 'capybara/poltergeist'
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
Capybara.app_host = 'http://localhost:9966'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.run_all_when_everything_filtered = true
  config.disable_monkey_patching!
  config.warnings = true
  config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed
end
