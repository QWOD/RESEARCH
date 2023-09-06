package main

import (
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"
)

var codeSize int
var secretCodeSeed [42]string = [42]string{
	"w", "l", "f", "j", "k", "p", "g",
	"h", "m", "d", "q", "v", "s", "r",
	"c", "x", "z", "Z", "W", "V", "X",
	"T", "O", "R", "Q", "P", "L", "N",
	"M", "S", "D", "J", "F", "H", "G",
	"K", "I", "B", "C", "t", "b", "n"}

func main() {
	codeSize, _ = strconv.Atoi(os.Args[1])
	if codeSize < 9999 {
		fmt.Println(strings.Replace(os.Args[1], "QWOD-MJ12", "QW🚫D-〽ʝ12", -1))
		fmt.Println(strings.Replace(os.Args[1], "MJ12-OMEGA", "〽ʝ12-ΩMعGΔTR🚫N", -1))
		fmt.Println(strings.Replace(os.Args[1], "ON", "∅N", -1))
		fmt.Println(strings.Replace(os.Args[1], "OD", "∅D", -1))
		fmt.Println(strings.Replace(os.Args[1], "O", "Ω", -1))
		fmt.Println(strings.Replace(os.Args[1], "o", "Ω", -1))
		fmt.Println(strings.Replace(os.Args[1], "AE", "Δ", -1))
		fmt.Println(strings.Replace(os.Args[1], "EA", "Δ", -1))
		fmt.Println(strings.Replace(os.Args[1], "IE", "Δ", -1))
		fmt.Println(strings.Replace(os.Args[1], "A", "Δ", -1))
		fmt.Println(strings.Replace(os.Args[1], "a", "Δ", -1))
		fmt.Println(strings.Replace(os.Args[1], "T", "☥", -1))
		fmt.Println(strings.Replace(os.Args[1], "T", "☥", -1))
		fmt.Println(strings.Replace(os.Args[1], SecretCode(1), SecretCode(1), -1))
	} else {
		fmt.Printf("%v exceeds maximum allowed length of 9999.\n", codeSize)
	}
}

func SecretCode(rotations int) string {
	var s string
	v := make([]int, rotations)
	// Populate array "v" with "n" number of random
	// characters selected from []string "secretCodeSeed".
	for n := 0; n < rotations; n++ {
		rand.Seed(time.Now().UnixNano())
		for _, value := range rand.Perm(len(secretCodeSeed)) {
			v[n] = value
		}
	}
	// Generate "x" amount of random characters
	// according to int specified with "rotations".
	for x := 0; x < rotations; x++ {
		s = s + secretCodeSeed[v[x]]
	}
	return s
}
