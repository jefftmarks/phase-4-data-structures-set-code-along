require 'pry'

class MySet
	attr_reader :hash

	def initialize(enumerable = [])
		@hash = {}
		enumerable.each do |value|
			@hash[value] = true
		end
	end

	def self.[](*args)
		self.new(args)
	end

	def include?(value)
		self.hash.has_key?(value)
	end

	def add(value)
		self.hash[value] = true
		self
	end

	def delete(value)
		self.hash.delete(value)
		self
	end

	def size
		self.hash.size
	end

	def clear
		self.hash.clear
		self
	end

	def each(&block)
		self.hash.keys.each(&block)
		self
	end
	
	def inspect
		"#<#{self.class.name}: {#{self.hash.keys.join(", ")}}>"
	end

end

# binding.pry
