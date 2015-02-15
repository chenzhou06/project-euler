package main

import (
	"fmt"
	"math"
	"time"
)

func mark(sieve *[]bool, i int64) {
	for x := i + i; x < int64(len(*sieve)); x += i {
		(*sieve)[x] = false
	}
}

func main() {
	start := time.Now()

	sieve := make([]bool, 2000000)
	var i int64
	for i = 0; i < 2000000; i++ {
		sieve[i] = true
	}

	for i = 2; i < int64(math.Sqrt(float64(len(sieve))))+1; i++ {
		if sieve[i] {
			mark(&sieve, i)
		}
	}

	var sum int64
	for i = 2; i < int64(len(sieve)); i++ {
		if sieve[i] {
			sum += i
		}
	}

	end := time.Now()
	t := end.Sub(start)

	fmt.Println("Result:", sum)
	fmt.Println("Use time:", t)

}
