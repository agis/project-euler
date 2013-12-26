package main

import (
	"fmt"
	"io/ioutil"
	"sort"
)

type Names [][]byte

func main() {
	raw, err := ioutil.ReadFile("names.txt")
	if err != nil {
		panic(err)
	}

	namesCount := 1
	for _, char := range raw {
		if char == 44 {
			namesCount++
		}
	}

	names := Names{}

	token := []byte{}
	atToken := false
	for _, char := range raw {
		if char == 34 && !atToken {
			atToken = true
		} else if char == 34 && atToken {
			names = append(names, token)
			atToken = false
			token = []byte{}
		} else if char != 44 {
			token = append(token, char)
		}
	}

	sort.Sort(names)

	score := 0
	for i, name := range names {
		nameScore := 0
		for _, v := range name {
			nameScore += int(v) - 64
		}
		score += (i + 1) * nameScore
	}
	fmt.Println(score)
}

func (n Names) Len() int {
	return len(n)
}

func (n Names) Less(i, j int) bool {
	less := true

	for index, letter := range n[i] {
		if index > len(n[j])-1 {
			less = false
			break
		}

		if letter < n[j][index] {
			less = true
			break
		} else if letter > n[j][index] {
			less = false
			break
		}
	}

	return less
}

func (n Names) Swap(i, j int) {
	n[j], n[i] = n[i], n[j]
}
