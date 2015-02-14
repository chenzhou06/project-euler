package main

import (
	"fmt"
	"time"
)

func main() {
	start := time.Now()
	for i := 1; i < 1000; i++ {
		for j := i; j < 1000; j++ {
			k := 1000 - i - j
			if i*i+j*j == k*k {
				fmt.Println("Result: ", i, j, k)
			}
		}
	}
	end := time.Now()
	t := end.Sub(start)
	fmt.Println("Use time: ", t)
}
