package main

import "fmt"

func main() {
  const max = 4000000

  a, b := 0, 1
  sum := 0
  for b <= max {
    if b%2 == 0 {
      sum += b
    }

    a, b = b, a + b
  }

  fmt.Println(sum)
}
