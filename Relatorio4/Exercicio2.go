package main

import (
	"fmt"
	"math/rand"
	"time"
)

func fatorial(x int) int {
	if x == 0 {
		return 1
	}
	return x * fatorial(x-1)
}

func main() {
	source := rand.NewSource(time.Now().UnixNano())
	rng := rand.New(source)

	numeroAleatorio := rng.Intn(10)
	fat := fatorial(numeroAleatorio)

	fmt.Printf("Número aleatório: %d\n", numeroAleatorio)
	fmt.Printf("Fatorial de %d: %d\n", numeroAleatorio, fat)
}