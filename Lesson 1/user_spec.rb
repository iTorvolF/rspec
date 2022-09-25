require_relative 'user'

RSpec.describe User do
	let(:user) { User.new(first_name, last_name, middle_name, email)}
	let(:first_name) { 'Иван' }
	let(:last_name) { 'Иванов' }
	let(:middle_name) { 'Иванович' }
	let(:email) { 'test@mail.com' }

	it 'Проверка имени' do
		expect(user.first_name).to eq first_name
	end

	it 'Проверка фамилии' do
		expect(user.last_name).to eq last_name
	end

	it 'Проверка отчества' do
		expect(user.middle_name).to eq middle_name
	end

	it 'Проверка почты' do
		expect(user.email).to eq email
	end
end