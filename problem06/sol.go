package main

import "fmt"

func main() {
	fmt.Println(sqofsum(100) - sumofsq(100))
}

func sumofsq(n int) int {
	var sum int = 0
	var i int = 1

	for ; i <= n; i++ {
		sum += i * i
	}
	return sum
}

func sqofsum(n int) (ret int) {
	var i int = 1
	var sum int = 0
	for ; i <= n; i++ {
		sum += i
	}
	ret = sum * sum
	return
}
