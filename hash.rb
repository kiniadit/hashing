# class/object that simulates hash storage and retrieval
# n memory locations are simualted as an array of arrays
# each memory location(inner array) stores key-value pairs
# The set location is based on the aribitary rule that 
# the modulus of the size applied to the key sets the memory location.
# This rule simulates a memory management protocol that a real
# hash algorithm might use.

require 'openssl'
class MyHash 

	attr_accessor :size
	def initialize(size)
		@size = size
		@memory_store = Array.new(size) {Array.new() }
	end

	def [](key)
		i = 0
		if key.is_a? String
			key = OpenSSL::Digest::SHA1.new(key) 
			key ="#{key}".to_i(16)
		end
		while @memory_store[key%size][i] != nil
			if @memory_store[key%size][i][0] == key
				return @memory_store[key%size][i][1]
			end
			i += 1
		end
	end

	def []=(key,value)
		i = 0
		if key.is_a? String
			key = OpenSSL::Digest::SHA1.new(key) 
			key ="#{key}".to_i(16)
		end
		while @memory_store[key%size][i] != nil
			i += 1
		end
		@memory_store[key%size][i] = [key,value]
	end

	def store
		return @memory_store
	end
end

hash = MyHash.new(5)

hash[0] = 11
hash[5] = 42
hash[1] = 44
hash[6] = 55
hash[4] = 88888
#non-numeric hashes
hash["hello"] = 56
hash["The rain in spain is mostly in the plains"] = 110
hash["Tathasthu"] = 99
hash["a"] = 11

p hash[0] 
p hash[5] 
p hash[1] 
p hash[6] 
p hash[4]
p hash["hello"]
p hash["The rain in spain is mostly in the plains"]
p hash["Tathasthu"]
p hash["a"] 

p hash.store

#p hash.store == [[[0, 11], [5, 42]], [[1, 44], [6, 55]], [], [], [[4, 88888]]]
