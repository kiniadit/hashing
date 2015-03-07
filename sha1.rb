require 'digest'

#passsord hash
password = "batman&raghav"

hash = Digest::SHA1.hexdigest(password)

puts "password hash: " + hash.to_s


#hashes whose inputs that vary by one character, have completely different hashes

puts Digest::SHA1.hexdigest("Hello World")
puts Digest::SHA1.hexdigest("Hello World")

puts Digest::SHA1.hexdigest("Hello world")

#size of input does not matter, the output will always be a 40-digit hexadecimal number

puts Digest::SHA1.hexdigest("a").length == Digest::SHA1.hexdigest("abcdefghijklmnopqrstuvwxyz").length