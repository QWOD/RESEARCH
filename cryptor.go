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
// PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; cd ~/QWOD/RESEARCH; go install cryptor.go; cp -f ~/go/bin/cryptor cryptor.$(uname -i); sha256sum cryptor.$(uname -i) >cryptor.$(uname -i).asc; sha256sum -c cryptor.$(uname -i).asc; ./cryptor.$(uname -i) :[[ CrypTex™: MQ: OMEGA: [[ WORLDS: FIRST: ]]: reverse-programming-language: is-by: @: is-with: QWOD-MJ12: ATSUOMOP-A: ]]:

import (
	"fmt"
	"math/rand"
	"os"
	"strings"
	"time"
)

var codeSize int
var secretCodeSeed [33]string = [33]string{
	"l", "j", "k",
	"p", "g", "m",
	"d", "q", "v",
	"c", "x", "z",
	"Z", "W", "V",
	"X", "T", "R",
	"Q", "P", "L",
	"N", "M", "S",
	"D", "J", "F",
	"H", "G", "K",
	"B", "C", "n"}

var secretRandomSeed [10]string = [10]string{
	"Δ", "+", ";", "!", "*",
	"%", "@", "?", "~", "Ω"}

func main() {
	var crypTexTranslated string = strings.Join(os.Args[1:], " ")
	codeSize = len(crypTexTranslated)
	if codeSize < 9999 {
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "QWOD-MJ12", "QW🚫D-〽ʝ12")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "MJ12-OMEGA", "〽ʝ12-ΩMعGΔTR🚫N")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "NOTICE", "N🚫T⚠️CE")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "WARNO", "W⚠️RN🚫")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OP", "🚫P")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OR", "∅R")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OG", "∅G")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "GO", "G🚫")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "INFIDEL:", "LoFi")
		crypTexTranslated = strings.Replace(crypTexTranslated, "LoFi:", "LOW: FIDELITY: [[ SIN: <=> fear-driven: pleasure-seeking: ]]: WAVE: FREQUENCY: CONSCIOUSNESS: [[ CHIKANS: ]]", -1)
		crypTexTranslated = strings.Replace(crypTexTranslated, "HLAB:", "[[ HLAB: <=> High-Level: Ascended-Being: ]]:", -1)
		crypTexTranslated = strings.Replace(crypTexTranslated, "LAMB:", "[[ LAMB: <=> Low-Amplitude: Magnetovortexresonate: Bionanotechnology: ]]:", -1)
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EY", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "HE", "HΔ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "IM", "ΩM")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "IL", "ΔL")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EM", "ΔM")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EV", "ΔV")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ER", "ΔR")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "KA", "Q∅")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EQ", "عQ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EK", "عQ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "AN", "ΔN")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ON", "∅N")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "UN", "ΔN")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "NO", "N∅")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OD", "∅D")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "DO", "D∅")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "O", "Ω")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "RA", "𓂀")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EL", "ΔL")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "AE", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EA", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "IE", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ET", "عT")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "A", "Δ")

		var newC = secretCodeSeed[rand.Intn(len(secretCodeSeed))]
		if newC == "U" || newC == "Y" {
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "U", "Δ")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "Y", "𓋹")
		}
		if newC == "t" || newC == "T" {
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "t", "☥")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "T", "7")
		}
		if newC == "E" || newC == "e" {
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "E", "3")
			crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "e", "ع")
		}

		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ΔTSU", "ATSU")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "I", "☥")

		// :[[ :W⚠️RN🚫: QW🚫D-〽ʝ12: RΔND0M: VECTΩR: ΔLGØRITHM-CHΔNGE: DETECTED: ]]:
		// cryptor "$(curl https://github.com/QWOD/RESEARCH/commit/0b0cef6e4859adbf787fa3c4ececb88d0c32b40c | tail -c 9999)"
		// // cryptor "$(tail -c 9999 CONSTITUTION-for-the-QWOD-MJ12-ATSUOMOP-A-COOPERATIVE-AGENCY.txt)"
		// cryptor "$(systemctl status -l figtree.service)"
		// Sep 06 01:35:42 mercuri.us.hyperspire.net figtreeservice[5289]: git@github.cΩm: PermissiΩn SenieS (publickey).
		// Sep 06 01:35:42 mercuri.us.hyperspire.net figtreeservice[5289]: fΔtΔl: CΩulS nΩt reΔS frΩm remΩte repΩsitΩry.
		// Sep 06 01:35:42 mercuri.us.hyperspire.net figtreeservice[5289]: PleΔse mΔke sure yΩu hΔve the cΩrrect Δccess rights
		// Sep 06 01:35:42 mercuri.us.hyperspire.net figtreeservice[5289]: ΔnS the repΩsitΩry exists.
		strings.ReplaceAll(crypTexTranslated, SecretCode(1), SecretRandomC(1))
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "fΩr-the:", "fΩr-thع:")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "☥s-with:", "íي-wíth:")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "☥s-by:", "íي-by:")
		fmt.Println(crypTexTranslated)
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
