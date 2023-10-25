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

// PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; cd ~/QWOD/RESEARCH; go install cryptor-s.go; cp -f cryptor-s.$(uname -i) ~/go/bin/cryptor-s; sha256sum cryptor-s.$(uname -i) >cryptor-s.$(uname -i).asc; sha256sum -c cryptor-s.$(uname -i).asc; ./cryptor-s.$(uname -i) :[[ :for-the: [[ CrypTex™: MQ: OMEGA: for-the: [[ WORLDS: FIRST: ]]: is-by: reverse: is-with: programming-language: is-by: @: is-with: QWOD-MJ12: ATSOSSDEV-A: abcdefghijklmnopqrstuvwxyz: ABCDEFGHIJKLMNOPQRSTUVWXYZ: ]]: fOr-the: [[ _ ]]: Is-by: [[ _ ]]: Is-with: [[ _ ]]: ]]:= TRUE: ]]:

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	// :[[ :SIMPLIFIED: CrypTex: for-the: [[ SIMPLE: MINDED: ]]: ]]:
	codeSize := len(strings.Join(os.Args[1:], " "))
	if 0 < codeSize && 9999 > codeSize {
		fmt.Println(strings.Join(os.Args[0:], " ")) // :[[ TEST: is-with: SHOULD: is-by: ALWAYS: OUTPUT: is-with: EXECUTABLE: NAME: ]]:
		fmt.Println(strings.Join(os.Args[1:], " ")) // :[[ TEST: is-with: SHOULD: is-by: ALWAYS: OUTPUT: is-with: ARGUMENTS: ]]:
	}
	// :[[ SHOULD: is-by: ALWAYS: is-with: WORK: is-by: DOES-NOT: is-with: WORK: is-by: [[ _ ]]: ]]:
	fmt.Println(":[[ DOES: THIS: WORK: is-by: [[ _ ]]: ]]:")

	var crypTexTranslated string = strings.Join(os.Args[1:], " ")
	if codeSize < 9999 {
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "AE", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "EA", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "A", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "a", "Δ")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "O", "Ω")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "o", "0")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "e", "3")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "T", "☥")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "fΩr-th3:", "fΩr-thع:")
		crypTexTranslated = strings.ReplaceAll(crypTexTranslated, "Is-with:", "íي-wíth:")
		fmt.Println(crypTexTranslated)
	} else {
		fmt.Printf("%v exceeds maximum allowed length of 9999.\n", codeSize)
	}
}
