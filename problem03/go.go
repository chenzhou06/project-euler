package main

import (
	"fmt"
	"math"
)

func isPrimeRaw(n int64) bool {
	var i int64
	for i = 2; i < int64(math.Sqrt(float64(n)))+1; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var n int64 = 600851475143
	var i int64
	var max int64
	for i = 3; i < n; i += 2 {
		if n%i == 0 {
			fmt.Println(i)
			if isPrimeRaw(i) {

				if i > max {
					max = i
				}

			}
		}
	}
	fmt.Println("max: ", max)

}
