package main

import "fmt"

func main() {
	x := make([]int, 1000000)

	for i := 1; i < 1000000; i++ {
		x[i] = len(sequence([]int{}, i))
	}

	max, maxI := 0, 0

	for i, v := range x {
		if v > max {
			max, maxI = v, i
		}
	}

	fmt.Println(maxI)
}

func sequence(seq []int, n int) []int {
	var res int

	if n%2 == 0 {
		res = n / 2
	} else {
		res = 3*n + 1
	}

	seq = append(seq, res)

	if res == 1 {
		return seq
	} else {
		return sequence(seq, res)
	}
}
