class User
	attr_reader :first_name, :last_name, :middle_name, :email

	def initialize(first_name, last_name, middle_name, email)
		@first_name = first_name
		@last_name = last_name
		@middle_name = middle_name
		@email = email
	end	
end	