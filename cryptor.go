package main

// :[[ :{ ^ <https://go.dev/> ^ }: ]]:
// go run cryptor.go ':[[ :QWOD-MJ12: ATSUOMOP-A: is-by: for-he-is-the: GOOD: SHEPPARD: ]]:'
// [ mercuri:RESEARCH ] ⥈ go install cryptor.go
// [ mercuri:RESEARCH ] ⥈ cryptor ":[[ :QWOD-MJ12: ATSUOMOP-A: is-by: for-he-is-the: GOOD: SHEPPARD: ]]:"
// :[[ :QW🚫D-〽ʝ12: ΔTSUΩMΩP-Δ: is-by: fΩr-he-is-the: GΩ∅D: SHΔPPΔRD: ]]:

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
	var crypTexTranslated string
	if codeSize < 9999 {
		crypTexTranslated = strings.ReplaceAll(os.Args[1], "QWOD-MJ12", "QW🚫D-〽ʝ12")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "MJ12-OMEGA", "〽ʝ12-ΩMعGΔTR🚫N")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "HE", "HΔ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "IM", "ΩM")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EM", "ΔM")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ON", "∅N")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OD", "∅D")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "O", "Ω")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "o", "Ω")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "RA", "𓂀")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EL", "ΔL")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "AE", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EA", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "IE", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "A", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "a", "Δ")

		var newC = secretCodeSeed[rand.Intn(len(secretCodeSeed))]
		if newC == "e" || newC == "i" || newC == "o" || newC == "u" || newC == "y" || newC == "E" || newC == "I" || newC == "O" || newC == "U" || newC == "Y" {
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "U", "Δ")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "u", "Δ")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "Y", "𓋹")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "t", "☥")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "T", "7")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "I", "☥")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "i", "☥")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "E", "3")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "S", "5")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "e", "☥")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "3", "³")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "5", "⁵")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "7", "⁷")
		}

		fmt.Println(strings.ReplaceAll(crypTexTranslated, SecretCode(3), SecretCode(3)))
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
