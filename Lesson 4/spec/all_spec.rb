# frozen_string_literal: true

RSpec.describe Array do
  it 'содержит только четные числа' do
    expect([1, 3, 5, 7]).to all be_odd
  end
end
