require_relative '../lesson 2/services/week'

RSpec.describe Services::Week do
  let(:week_days) { described_class.call }

  it 'Получаем значение по ключу' do
    expect(week_days[:monday]).to eq 'понедельник'
    expect(week_days[:tuesday]).to eq 'вторник'
  end

  it 'Хэш содержит 7 элементов' do
    expect(week_days.count).to be 7
  end

  it 'Вызов не существующего метода' do
    expect { week_days.year }.to raise_error(NoMethodError)
  end
end