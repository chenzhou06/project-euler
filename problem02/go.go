package main

import "fmt"

func main() {
    a := 1
    b := 1
    sum := 0
    c := 0

    for b < 4000000 {
        c = a + b
        
        sum += c
        a = b + c
        b = a + c
    }
    fmt.Println(sum)
}