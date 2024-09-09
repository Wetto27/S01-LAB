package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c, delta, x1, x2, x float64

	fmt.Println("Digite os valores de a, b e c (ax^2 + bx + c = 0):")
	fmt.Print("a: ")
	fmt.Scan(&a)
	fmt.Print("b: ")
	fmt.Scan(&b)
	fmt.Print("c: ")
	fmt.Scan(&c)

	delta = (b*b) - (4*a*c)

	if delta > 0 {
		x1 = ((-b) + math.Sqrt(delta)) / (2 * a)
		x2 = ((-b) - math.Sqrt(delta)) / (2 * a)
		fmt.Printf("As raízes da equação são: x1 = %.2f, x2 = %.2f\n", x1, x2)
	} else if delta == 0 {
		x = (-b) / (2 * a)
		fmt.Printf("A raiz da equação é: x = %.2f\n", x)
	} else {
		fmt.Println("A equação não possui raízes reais.")
	}
}
