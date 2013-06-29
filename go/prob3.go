// The prime factors of 13195 are 5, 7, 13 and 29
// What is the largest prime factor of the number 600851475143

package main

import (
  "fmt"
)

var (
  target int64 = 600851475143 // 600851475143 // 13195 // 775146
)

func main() {
  primes := make([]int64, 0)
  factors := make([]int64, 0)

  for i := int64(2); i < (target/2); i++ {
    if isFactor(target, i) {
      f1 := i
      f2 := target / i
      factors = append(factors, f1, f2)
      if f1 > f2 {
        break
      }
    }
  }

  fmt.Printf("%d\n", factors)

  for _, v := range factors {
    if isPrime(v) {
      primes = append(primes, v)
    }
  }

  fmt.Printf("%d\n", primes)

  largest := primes[len(primes)-1]
  fmt.Printf("%d\n", largest)
}

func isFactor(target int64, possible_factor int64) (bool) {
  if target%possible_factor == 0 {
    return true
  }
  return false
}

func isPrime(target int64) (bool) {
  if target == 1 {
    return false
  }
  for i := int64(2); i < target; i++ {
    if isFactor(target, i) {
      return false
    }
  }
  return true
}

// def is_prime?(target)
//   return false if target == 1
//   2.upto(Math.sqrt(target).to_i) do |i|
//     if target % i == 0
//       return false
//       break
//     end
//   end
//   return true
// end