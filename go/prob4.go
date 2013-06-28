// A palindromic number reads the same both ways.
// The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
// Find the largest palindrome made from the product of two 3-digit numbers.

package main

import (
  "fmt"
  "strings"
  "sort"
)

func main() {
  palindromes := make([]int32, 0)

  for i := int32(900); i <= int32(999); i++ {
    for x := int32(900); x <= int32(999); x++ {
      product := x * i
      if testPalindrome(product) {
        palindromes = append(palindromes, product)
      }
    }
  }

  fmt.Printf("%d\n", palindromes)
}

func testPalindrome(arg int32) (bool) {
  str := string(arg)
  str_slice := strings.Split(str, "")
  reversed_slice := str_slice.Reverse()
  if str_slice == reversed_slice {
    return true
  }
  return false
  // turn int into string
  // split into slice
  // rever slice, see if it's equal
}