// Each new term in the Fibonacci sequence is generated by adding the previous two
// terms.  By starting with 1 and 2, the first 10 terms will be:
//   1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ...
// By considering the terms in the Fibonacci sequence whose values do not exceed 4
// million, find the sum of the even valued terms


package main

import "fmt"

func main() {
  var (
    x uint
    y uint
    fib uint
    sum uint
    num uint
  )

  x, y = 1, 2
  fib_array := []uint{1, 2}

  for fib < 4000000 {
    fib = x + y
    fib_array = append(fib_array, fib)
    x, y = y, fib
  }

  for i := 0; i < len(fib_array); i++ {
    num = fib_array[i]

    if num % 2 == 0 {
      sum += num
    }
  }

  fmt.Printf("%d\n", sum)
}