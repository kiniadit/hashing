# hashing
implementations of hashing algorithms in Ruby

Hashing function

Maps data of arbitrary size to data of fixed size

Hash table
Maps keys to interger index values

Hash_function(key) % (Prime_number or Table Size) = Location in Hash Table 

Domain (set of possoible keys) > Range (set of psosible indices)
  therefore, hash table index may refer to set of possible data values (buckets)
  
Hashing function is always unique
Hash table gives a bucket of memry values (non-unique)

Hashing function thus improves the distrbution of values stored in hash table

Cryptogrpahic Hashing function - MD5, SHA0, SHA1
Makes it diffcult to reverse engineer original input through mathematical attach strategies

Ruby uses MurmurHash - simple, fast ans opposed to secure, slow. No need for security, more for randome access of data values.
some useful links - 

To copy this list, type [Ctrl] A, then type [Ctrl] C. 

SHA-1 - Wikipedia, the free encyclopedia
http://en.wikipedia.org/wiki/SHA-1

hashing function - Google Search
https://www.google.co.in/search?q=hashing+function&oq=hashing+function&aqs=chrome..69i57j69i60j69i59j69i60.2036j0j7&sourceid=chrome&es_sm=91&ie=UTF-8

ruby hashing - Google Search
https://www.google.co.in/search?q=ruby+hashing&oq=ruby+hashing&aqs=chrome..69i57j69i60j69i65j69i59j69i64j69i60.2020j0j7&sourceid=chrome&es_sm=91&ie=UTF-8

How do I create a SHA1 hash in ruby? - Stack Overflow
http://stackoverflow.com/questions/34490/how-do-i-create-a-sha1-hash-in-ruby

How the Hash Works in Ruby
http://www.gotealeaf.com/blog/how-the-hash-works-in-ruby

ruby/st.c at 1b5acebef2d447a3dbed6cf5e146fda74b81f10d · ruby/ruby
https://github.com/ruby/ruby/blob/1b5acebef2d447a3dbed6cf5e146fda74b81f10d/st.c

MurmurHash - Wikipedia, the free encyclopedia
http://en.wikipedia.org/wiki/MurmurHash

MurmurHash - Wikipedia, the free encyclopedia
http://en.wikipedia.org/wiki/MurmurHash

RubyMonk - Ruby Primer - Introduction to Ruby Hashes
http://rubymonk.com/learning/books/1/chapters/10-hashes-in-ruby/lessons/46-introduction-to-ruby-hashes

Cryptographic Hashes in Ruby
http://ruby.about.com/od/advancedruby/ss/Cryptographic-Hashes-In-Ruby.htm

Class: OpenSSL::Digest (Ruby 1.9.3)
http://ruby-doc.org/stdlib-1.9.3/libdoc/openssl/rdoc/OpenSSL/Digest.html

Ruby 2.2.0 Released
https://www.ruby-lang.org/en/news/2014/12/25/ruby-2-2-0-released/

cryptography - What is the difference between a Hash Function and a Cryptographic Hash Function? - Information Security Stack Exchange
http://security.stackexchange.com/questions/11839/what-is-the-difference-between-a-hash-function-and-a-cryptographic-hash-function

Hash function - Wikipedia, the free encyclopedia
http://en.wikipedia.org/wiki/Hash_function

Ruby Quicktips - Converting between Hexadecimal and Fixnum
http://rubyquicktips.com/post/464001793/converting-between-hexadecimal-and-fixnum

PROGRAMMING BLOG BY RAJA GHOSH: ADVANTAGES AND DISADVANTAGES OF HASHING
http://rajaghoshtech2.blogspot.in/2010/03/advantages-and-disadvantages-of-hashing.html

courses.cs.vt.edu/~cs3114/Fall10/Notes/T16.HashFunctions.pdf
http://courses.cs.vt.edu/~cs3114/Fall10/Notes/T16.HashFunctions.pdf

language agnostic - Why should hash functions use a prime number modulus? - Stack Overflow
http://stackoverflow.com/questions/1145217/why-should-hash-functions-use-a-prime-number-modulus

http://codereview.stackexchange.com/questions/57256/is-this-a-good-ruby-implementation-of-prime-factorization

