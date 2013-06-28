non_prime_factors = [2, 3, 5, 7, 9]
factors = []
target = 600851475143
primes = []
1.upto(target / 2) do |i|
  if target % i == 0
    f1 = i
    f2 = target / i
    factors.push(f1, f2)
    break if f1 > f2

  end
end

factors.each do |f|
  primes << f if is_prime(f)
end

def self.non_prime_factors
[2, 3, 5, 7, 9]
end

def self.is_prime(target)
  return true if non_prime_factors.include? target
  is_prime_flag = false
  is_prime_flag = non_prime_factors.any? do |i|
    target % i == 0
  end

  !is_prime_flag
end


def palindrome(number)
  orig = number.to_s
  rev = orig.reverse
  orig == rev
end

number1 = 999
number2 = 999


palindromes = []
900.upto(999) do |i|
  900.upto(999) do |f|
    product = i * f
    if palindrome(product)
      palindromes << product
    end
  end
end


target = 2520
range = 1..10

range = 1..20
def all_divisible?(target, range)
  (range).all? do |i|
    target % i == 0
  end
end
i = 20
while true do
  if all_divisible?(i, 1..20)
    puts i.to_s
    break
  end
  i += 20
end

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

sum_of_squares = 0
sum = 0
1.upto(100) do |i|
  sum_of_squares += i**2
  sum += i
end
sum_of_squares - sum**2

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10_001st prime number?

def is_prime?(target)
  return false if target == 1
  2.upto(target/2) do |i|
    if target % i == 0
      return false
      break
    end
  end
  return true
end
primes = []
i = 2
while true do
  if is_prime?(i)
    primes << i
    if primes.length == 10001
      puts primes.last
      break
    end
  end
  i += 1
end

Find the greatest product of five consecutive digits in the 1000-digit number.

digits = "73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
ts as array

digits.each_slice(5)

array_of_fives = []
while true do
  array_of_fives << digits.take(5)
  if digits.length > 4
    digits = digits.drop(1)
  else
    break
  end
end

def product_array(array)
  product = array.first.to_i
  array.drop(1).each do |i|
    product = product * i.to_i
  end
  product
end

array_of_products = []
array_of_fives.each do |a|
  array_of_products << product_array(a)
end


A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

a + b + c = 1000
find a * b * c

a**2 + b**2 = c**2

Math.sqrt(a**2 + b**2) = c

< 500

c = 500
a + b = 500

a**2 + b**2 = 500**2

1.upto(500) do |a|
  1.upto(500) do |b|
    1.upto(500) do |c|
      if triplet?(a, b, c)
        puts "#{a*b*c}"
        break
      end
    end
  end

end


def triplet?(a, b, c)
  return false if (a + b + c) != 1000
  Math.sqrt(a**2 + b**2) == c
end

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.


def is_prime?(target)
  return false if target == 1
  2.upto(Math.sqrt(target).to_i) do |i|
    if target % i == 0
      return false
      break
    end
  end
  return true
end

def sum_array(array)
  sum = array.first.to_i
  array.drop(1).each do |i|
    sum += i.to_i
  end
  sum
end

# improvement would be to go by odd numbers

def sum_primes_below(target)
  prime_sum = 0
  (2..target).each do |i|
    if is_prime?(i)
      prime_sum += i
    end
  end

  prime_sum
end

08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48

array = $w[digits]
hash_of_diagonals = {}

# => hash slot => [1, 2, 3, 4]
row = 0
# diagonals
array.each_slice(20) do |slice|
  hash_of_diagonals[idx] = [] if hash_of_diagonals[idx].nil?

  slice.each_with_index do |i, idx|
    if row == 0
      hash_of_diagonals[idx] << i
    else
      hash_of_diagonals[idx - 1] << i
    end
  end
  row += 1
end

hash_of_sideways = {}
#sideways
sliceh = 0
array.each_slice(4) do |slice|
  hash_of_sideways[sliceh] = []
  slice.each_with_index do |i, idx|
    hash_of_sideways[sliceh] << i
  end
  sliceh += 1
end

array_of_products = []
hash_of_diagonals.each do |k, v|
  array_of_products << v.reduce(:*)
end
8458015616609791
