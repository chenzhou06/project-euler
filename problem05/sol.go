package main

import (
	"fmt"
	"time"
)

func main() {
	start := time.Now()

	var first uint = 2 * 4 * 6 * 8 * 10
	for {
		if divisible(first) {
			fmt.Println("Result:", first)
			break
		}
		first += 20
	}
	end := time.Now()
	t := end.Sub(start)
	fmt.Println("Use time:", t)

}

func divisible(n uint) bool {
	var i uint = 9
	for ; i < 21; i++ {
		if n%i != 0 {
			return false
		}
	}
	return true
}
