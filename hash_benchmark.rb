require 'benchmark'
require 'openssl'

data = File.open("100000.txt").read

p sha1_time = Benchmark.realtime { OpenSSL::Digest::SHA1.hexdigest(data) }
p md5_time = Benchmark.realtime { OpenSSL::Digest::MD5.hexdigest(data) }

p sha1_time / md5_time

