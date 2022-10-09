
RSpec.describe Set do
  let(:set) { Set[1, 2, 3, 4] }

  context 'Тестирование Set' do

    it 'Позволяет добавлять новые элементы' do
      expect(set.add?([5, 6])).to be_truthy
    end

    it 'Позволяет добавлять элементы с помощью оператора <<' do
      expect((set << 5).to_a).to eq [1, 2, 3, 4, 5]
    end

    it 'Позволяет использовать оператор Drop' do
      expect((set.drop(1)).to_a).to eq [ 2, 3, 4]
    end

    it 'Позволяет принимать блок' do
      expect { |block| set.each(&block) }.to yield_control
    end
  end
end