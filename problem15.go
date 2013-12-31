package main

const E = 20

func main() {
	l := [E+1]int{1}

	for i := 1; i <= E; i++ {
		for j := 1; j < i; j++ {
			l[j] = l[j] + l[j-1]
		}
		l[i] = 2 * l[i-1]
	}

	panic(l[E])
}
