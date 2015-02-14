package main

import (
	"fmt"
	"strconv"
)

func isPali(n int) bool {
	str1 := strconv.Itoa(n)
	l := len(str1)
	for i := 0; i < l/2; i++ {
		if str1[i] != str1[l-i-1] {
			return false
		}
	}
	return true
}

func main() {
	var max int = 0
	for i := 999; i > 99; i-- {
		// fmt.Printf("i: %d\n", i)
		for j := 999; j > i-1; j-- {
			if i*j <= max {
				continue
			}
			// fmt.Println("i: ", i, ";", "j: ", j)
			if isPali(i*j) && i*j > max {
				max = i * j
			}
		}
	}
	fmt.Println(max)
}
