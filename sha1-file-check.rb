require 'openssl'

sha1 = OpenSSL::Digest::SHA1.new
file = File.open(ARGV[0])
buffer = ""
while !file.eof
	file.read(512,buffer)
	sha1 << buffer 
end

puts sha1