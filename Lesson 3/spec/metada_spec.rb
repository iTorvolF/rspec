RSpec.describe Hash do
	it 'используется в качестве метаданных в RSpec', :fast do |example|
		pp example.metadata
	end
end