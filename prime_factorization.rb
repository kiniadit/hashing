require 'prime'
require 'benchmark'

#prime factorization with small numbers
prime1 = 47
prime2 = 31
prime_product = 1

time_multiplication = Benchmark.realtime do prime_product = prime1 * prime2 end

time_factorization = Benchmark.realtime do Prime.prime_division(prime_product) end

p time_multiplication/time_factorization

#prime factorization with large primes
prime1 = 7907
prime2 = 6829

time_multiplication = Benchmark.realtime do prime_product = prime1 * prime2 end

time_factorization = Benchmark.realtime do Prime.prime_division(prime_product) end

p time_multiplication/time_factorization

#prime factorization with large primes
prime1 = 1299827
prime2 = 1299821

time_multiplication = Benchmark.realtime do prime_product = prime1 * prime2 end

time_factorization = Benchmark.realtime do Prime.prime_division(prime_product) end

p time_multiplication/time_factorization