require 'byebug'# Find the first 1,000 prime numbers
# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself. A natural number greater than 1 that is not a prime number is called a composite number.


def get_first_1000_primes
    primes = [2, 3]
    count = 1000
    y = 4
    loop do

       (4..(y/2)).each do |num|
          #byebug
          if ((y % num) != 0) && (num != y)
              primes << y
              break
          end

       end
       y += 1

       break if primes.count > 1000


    end

    p primes
end

get_first_1000_primes()
