require 'openssl'

md5 = OpenSSL::Digest::MD5.new

file_contents = File.open(ARGV[0]).read

md5 << file_contents

puts md5