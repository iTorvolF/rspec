# frozen_string_literal: true

require_relative 'support/array_builder'
require_relative 'support/enumerable_shared_examples'

Dir['lib/**/*.rb'].each do |file|
  require_relative "../#{file}"
end

RSpec.configure do |config|
  config.include ArrayBuilder
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
