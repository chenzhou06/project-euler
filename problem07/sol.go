package main

import "fmt"
import "math"
import "time"

func main() {

	count := 0
	n := 1
	start := time.Now()
	for count < 10001 {
		n++
		if isPrime(n) {
			count++
		}
	}
	end := time.Now()
	delta := end.Sub(start)
	fmt.Println("Prime:", n)
	fmt.Println("Use time:", delta)
}

func isPrime(n int) bool {
	if n == 2 {
		return true
	}
	for i := 2; i < int(math.Sqrt(float64(n)))+1; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}
