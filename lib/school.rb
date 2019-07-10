class School
  attr_reader :roster

	def initialize(name)
	  @name = name
		@roster = {}
	end

	def add_student(name, grade)
		@roster[grade] ||= []
		@roster[grade] << name
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		sorted_hash = {}
		@roster.map { |grade, name| sorted_hash[grade] = name.sort  }
		sorted_hash
	end

end