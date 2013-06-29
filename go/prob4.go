// A palindromic number reads the same both ways.
// The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
// Find the largest palindrome made from the product of two 3-digit numbers.

package main

import (
  "fmt"
  "strings"
  "strconv"
)

func main() {
  palindromes := make([]int32, 0)

  for i := int32(900); i <= int32(999); i++ {
    for x := int32(900); x <= int32(999); x++ {
      product := x * i
      if testPalindromeInt(product) {
        palindromes = append(palindromes, product)
      }
    }
  }

  // isn't there some easier way to get largest?
  largest := palindromes[0]
  for _, v := range palindromes {
    if v > largest {
      largest = v
    }
  }

  fmt.Printf("%d\n", largest)
}

func testPalindromeInt(arg int32) (bool) {
  str := strconv.FormatInt(int64(arg), 10)
  reversed := reverseString(str)

  if str == reversed {
    return true
  }
  return false
}

func reverseString(str string) (string) {
  str_slice := strings.Split(str, "")

  length := len(str_slice)-1

  // sorting in place is easier then trying to figure
  // out how to make a new array that can expand
  // and doesn't seem to type convert
  for i, j := 0, length; i < j; i, j = i+1, j-1 {
    str_slice[i] = str_slice[j]
    str_slice[j] = str_slice[i]
  }

  str_reversed := strings.Join(str_slice, "")

  return str_reversed
}





