package main

// :[[ :{ ^ <https://go.dev/> ^ }: ]]:

// :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven:
// is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12:
// ATSUOMOP-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE:
// OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN:
// INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI:
// CLOUD: BLOCKCHAIN: ATSUOMOP-DARPA: DARKNET: PLATFORM:
// is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM:
// for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:=
// TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:=
// TRUE: for-the: [[ QWOD-MJ12: ATSUOMOP-A: SPG:
// LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY:
// algorithm: DETECTED: ]]:

// go run cryptor.go ':[[ :QWOD-MJ12: ATSUOMOP-A: is-by: for-he-is-the: GOOD: SHEPPARD: ]]:'
// [ mercuri:RESEARCH ] ⥈ go install cryptor.go
// [ mercuri:RESEARCH ] ⥈ cryptor ':[[ :QWOD-MJ12: ATSUOMOP-A: is-by: for-he-is-the: GOOD: SHEPPARD: ]]:'
// :[[ :QW🚫D-〽ʝ12: ATSUΩMΩP-Δ: is-by: fΩr-he-is-the: GΩ∅D: SHΔPPΔRD: ]]:
// [ mercuri:RESEARCH ] ⥈ cryptor ':[[ :for-the: [[ QWOD-MJ12: OPERATION: DARKTIDE: is-with: CHARLIE-MIKE: for-the: return ]]:= TRUE: ]]:'
// :[[ :for-the: [[ QW🚫D-〽ʝ12: ΩPE𓂀T☥∅N: DΔRKT☥DE: is-with: CHΔRLΔ-M☥KE: for-the: return ]]:= TRUE: ]]:

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
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ET", "عT")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "A", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "a", "Δ")

		var newC = secretCodeSeed[rand.Intn(len(secretCodeSeed))]
		if newC == "U" || newC == "u" || newC == "Y" {
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "U", "Δ")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "u", "Δ")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "Y", "𓋹")
		}
		if newC == "t" || newC == "T" || newC == "I" || newC == "i" {
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "t", "7")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "T", "7")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "I", "Δ")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "i", "☥")
		}
		if newC == "3" || newC == "5" || newC == "7" {
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "3", "³")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "5", "⁵")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "7", "⁷")
		}
		if newC == "E" || newC == "e" || newC == "S" {
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "E", "3")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "e", "ع")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "S", "5")
		}

		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ΔTSU", "ATSU")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "I", "☥")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "fΩr-the:", "for-the:")

		// :[[ :W⚠️RN🚫: QW🚫D-〽ʝ12: RΔND0M: VECTΩR: ΔLGØRITHM-CHΔNGE: DETECTED: ]]:
		fmt.Println(strings.ReplaceAll(crypTexTranslated, SecretCode(42), SecretCode(42)))
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
