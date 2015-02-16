package main

import (
	"fmt"
	"math"
)

func main() {
	var i int64
	c := 0
	for i = 10000000; c < 500; i++ {
		// fmt.Println(c)
		c = factorCount(i)
	}
	fmt.Println("Result:", i)

}

func factorCount(n int64) (c int) {
	var i int64
	sqrt := int64(math.Sqrt(float64(n)))
	for i = 1; i <= sqrt; i++ {
		// fmt.Println(i)
		if isFactor(n, i) {
			// fmt.Println(i)
			if i == sqrt {
				c += 1
			} else {
				c += 2
			}
		}
	}
	return
}

func isFactor(n int64, f int64) (ret bool) {
	if n%f == 0 {
		ret = true
	} else {
		ret = false
	}
	return
}
