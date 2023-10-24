package main

// :[[ :{ ^ <https://go.dev/> ^ }: ]]:

// :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven:
// is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12:
// ATSOSSDEV-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE:
// OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN:
// INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI:
// CLOUD: BLOCKCHAIN: ATSOSSDEV-DARPA: DARKNET: PLATFORM:
// is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM:
// for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:=
// TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:=
// TRUE: for-the: [[ QWOD-MJ12: ATSOSSDEV-A: SPG:
// LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY:
// algorithm: DETECTED: ]]:

// go run cryptor.go ':[[ :QWOD-MJ12: ATSOSSDEV-A: is-by: for-he-is-the: GOOD: SHEPPARD: ]]:'
// [ mercuri:RESEARCH ] ⥈ go install cryptor.go
// [ mercuri:RESEARCH ] ⥈ cryptor ':[[ :QWOD-MJ12: ATSOSSDEV-A: is-by: for-he-is-the: GOOD: SHEPPARD: ]]:'
// :[[ :QW🚫D-〽ʝ12: ATSUΩMΩP-Δ: is-by: fΩr-he-is-the: GΩ∅D: SHΔPPΔRD: ]]:
// [ mercuri:RESEARCH ] ⥈ cryptor ':[[ :for-the: [[ QWOD-MJ12: OPERATION: DARKTIDE: is-with: CHARLIE-MIKE: for-the: return ]]:= TRUE: ]]:'
// :[[ :for-the: [[ QW🚫D-〽ʝ12: ΩPE𓂀T☥∅N: DΔRKT☥DE: is-with: CHΔRLΔ-M☥KE: for-the: return ]]:= TRUE: ]]:
// PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; cd ~/QWOD/RESEARCH; go install cryptor-s.go; cp -f ~/go/bin/cryptor-s cryptor-s.$(uname -i); sha256sum cryptor-s.$(uname -i) >cryptor-s.$(uname -i).asc; sha256sum -c cryptor-s.$(uname -i).asc; ./cryptor-s.$(uname -i) :[[ :for-the: [[ CrypTex™: MQ: OMEGA: for-the: [[ WORLDS: FIRST: ]]: is-by: reverse: is-with: programming-language: is-by: @: is-with: QWOD-MJ12: ATSOSSDEV-A: abcdefghijklmnopqrstuvwxyz: ABCDEFGHIJKLMNOPQRSTUVWXYZ: ]]: fOr-the: [[ _ ]]: Is-by: [[ _ ]]: Is-with: [[ _ ]]: ]]:= TRUE: ]]:

import (
	"fmt"
	"math/rand"
	"os"
	"strings"
	"time"
)

var codeSize int
var secretCodeSeed [27]string = [27]string{
	"a", "j", "k", "p",
	"g", "d", "q", "v",
	"W", "V", "X", "T",
	"R", "Q", "P", "L",
	"N", "M", "D", "J",
	"F", "H", "G", "K",
	"B", "C", "Y"}

var secretRandomSeed [13]string = [13]string{
	"🔺", "+", "!",
	"%", "@", "?",
	"☢️", "☣️", "⚠️",
	"⭕", "🕳️", "✴️", "⚫"}

func main() {
	// :[[ :SIMPLIFIED: CrypTex: for-the: [[ SIMPLE: MINDED: ]]: ]]:
	var crypTexTranslated string = strings.Join(os.Args[2:], " ")
	codeSize = len(crypTexTranslated)
	if codeSize < 9999 {
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "AE", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EA", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "A", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "a", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "O", "Ω")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "o", "Ω")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "T", "☥")
	} else {
		fmt.Printf("%v exceeds maximum allowed length of 9999.\n", codeSize)
	}
}

func SecretRandomC(rotations int) string {
	var s string
	v := make([]int, rotations)
	// Populate array "v" with "n" number of random
	// characters selected from []string "secretRandomSeed".
	for n := 0; n < rotations; n++ {
		rand.Seed(time.Now().UnixNano())
		for _, value := range rand.Perm(len(secretRandomSeed)) {
			v[n] = value
		}
	}
	// Generate "x" amount of random characters
	// according to int specified with "rotations".
	for x := 0; x < rotations; x++ {
		s = s + secretRandomSeed[v[x]]
	}
	return s
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
