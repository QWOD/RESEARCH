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

// PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; cd ~/QWOD/RESEARCH; go install cryptor.go; cp -f cryptor.$(uname -i) ~/go/bin/cryptor; sha256sum cryptor.$(uname -i) >cryptor.$(uname -i).asc; sha256sum -c cryptor.$(uname -i).asc; ./cryptor.$(uname -i) :[[ :for-the: [[ CrypTex™: MQ: OMEGA: for-the: [[ WORLDS: FIRST: ]]: is-by: reverse: is-with: programming-language: is-by: @: is-with: QWOD-MJ12: ATSOSSDEV-A: abcdefghijklmnopqrstuvwxyz: ABCDEFGHIJKLMNOPQRSTUVWXYZ: ]]: fOr-the: [[ _ ]]: Is-by: [[ _ ]]: Is-with: [[ _ ]]: ]]:= TRUE: ]]:

import (
	"fmt"
	"math/rand"
	"os"
	"strings"
	"time"
)

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
	// :[[ :SYMBOLIZED: CrypTex: for-the: [[ SYMBOL: MINDED: ]]: ]]:
	var crypTexTranslated string = strings.Join(os.Args[1:], " ")
	codeSize := len(strings.Join(os.Args[1:], " "))
	if 0 < codeSize && 9999 > codeSize {
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "QWOD-MJ12", "QW🚫D-〽ʝ12")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "MJ12-OMEGA", "〽ʝ12-ΩMعGΔTR🚫N")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "NOTICE", "N🚫T⚠️CE")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "WARNO", "W⚠️RN🚫")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OP", "🚫P")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OR", "∅R")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OG", "∅G")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "GO", "G🚫")
		crypTexTranslated = strings.Replace(crypTexTranslated, "CrypTex:", "CrΔp☥Δx™:", -1)
		crypTexTranslated = strings.Replace(crypTexTranslated, "CrypTex™:", "CrΔp☥Δx™:", -1)
		crypTexTranslated = strings.Replace(crypTexTranslated, "OMEGA:", "∅MΔGΔ:", -1)
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EY", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, " HE", " HΔ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, " WE", " WΔ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, " US", " ΩS")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "IM", "ΩM")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "UN", "ΩN")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "IL", "ΔL")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "HEM", "HΔM")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EV", "ΔV")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EAR", "ΔR")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "YE", "YΔ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "KA", "Q∅")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EQ", "عQ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EK", "عQ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EC", "عC")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ED", "3D")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "AN", "ΔN")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ON", "∅N")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "NO", "N∅")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "OD", "∅D")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "DO", "D∅")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "RA", "𓂀")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EL", "ΔL")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EAR", "ΔR")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "IE", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ET", "عT")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "A", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "O", "Ω")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "o", "0")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "a", "4")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "e", "3")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "l", "1")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "S", "5")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "T", "☥")

		// :[[ :W⚠️RN🚫: QW🚫D-〽ʝ12: RΔND0M: VECTΩR: ΔLGØRITHM-CHΔNGE: DETECTED: ]]:
		// cryptor "$(curl https://github.com/QWOD/RESEARCH/commit/0b0cef6e4859adbf787fa3c4ececb88d0c32b40c | tail -c 9999)"
		// // cryptor "$(tail -c 9999 CONSTITUTION-for-the-QWOD-MJ12-ATSOSSDEV-A-COOPERATIVE-AGENCY.txt)"
		// cryptor "$(systemctl status -l figtree.service)"
		// Sep 06 01:35:42 mercuri.us.hyperspire.net figtreeservice[5289]: git@github.cΩm: PermissiΩn SenieS (publickey).
		// Sep 06 01:35:42 mercuri.us.hyperspire.net figtreeservice[5289]: fΔtΔl: CΩulS nΩt reΔS frΩm remΩte repΩsitΩry.
		// Sep 06 01:35:42 mercuri.us.hyperspire.net figtreeservice[5289]: PleΔse mΔke sure yΩu hΔve the cΩrrect Δccess rights
		// Sep 06 01:35:42 mercuri.us.hyperspire.net figtreeservice[5289]: ΔnS the repΩsitΩry exists.
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "f0r-th3:", "for-the:")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "fΩr-th3:", "fΩr-thع:")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "☥s-with:", "íي-wíth:")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, " Ω5", " ΩS")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "ΔT5U", "ATSU")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "☥s-by:", "íي-by:")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, SecretCode(1), SecretRandomC(1))
		fmt.Println(crypTexTranslated)
	} else {
		fmt.Printf(":[[ %v: %#v: <=> inappropriate: codeSize: ]]:.\n", codeSize)
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
