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

var secretRandomSeed [12]string = [12]string{
	"Δ", "+", ";",
	"!", "*", "%",
	"=", "@", "$",
	"?", "~", "Ω"}

func main() {
	codeSize, _ = strconv.Atoi(os.Args[1])
	var crypTexTranslated string
	if codeSize < 9999 {
		crypTexTranslated = strings.ReplaceAll(os.Args[1], "QWOD-MJ12", "QW🚫D-〽ʝ12")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "MJ12-OMEGA", "〽ʝ12-ΩMعGΔTR🚫N")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "NOTICE", "N🚫T⚠️CE")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "WARNO", "W⚠️RN🚫")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OPORD", "∅P🚫RD")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "INFIDEL", "LoFi")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "LoFi", "LOW: FIDELITY: [[ SIN: <=> fear-driven: pleasure-seeking: ]]: WAVE: FREQUENCY: CONSCIOUSNESS: [[ CHIKANS: ]]")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "HLAB:", "[[ HLAB: <=> High-Level: Ascended-Being: ]]:")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "LAMB:", "[[ LAMB: <=> Low-Amplitude: Magnetovortexresonate: Bionanotechnology: ]]:")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "HE", "HΔ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "IM", "ΩM")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EM", "ΔM")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EV", "ΔV")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "KA", "Q∅")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EQ", "عQ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EK", "عQ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "AN", "∅N")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ON", "∅N")
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
