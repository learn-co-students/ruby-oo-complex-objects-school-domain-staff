# code here!

class School
	attr_reader :name, :roster

	def initialize(name)
		@name = name 
		@roster = {}
	end 

	def add_student(s_name, grade)
		if @roster[grade]
			@roster[grade] << s_name
		else
			@roster[grade] = []
			@roster[grade] << s_name
		end
		@roster
	end

	def grade(g)
		@roster[g]
	end

	def sort 
		@roster.each do |key, value|
			@roster[key] = value.sort
		end
		@roster
	end


end 
