# frozen_string_literal: true

require_relative '../../services/block_generator'

RSpec.describe Services::BlockGenerator do
  it :call do
    expect do |block|
      described_class.call(10, 'food', Math::PI, &block)
    end.to yield_with_args(10, /foo/, a_value_within(0.1).of(3.14))
  end
end
