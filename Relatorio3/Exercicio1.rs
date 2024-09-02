use std::io;

fn main() {
    println!("Digite dois números: ");
    let mut num1_input = String::new();
    let mut num2_input = String::new();
    let mut op = String::new();
    let result: i32;
    let num1: i32;
    let num2: i32;

    io::stdin().read_line(&mut num1_input).expect("Erro ao ler entrada.");
    io::stdin().read_line(&mut num2_input).expect("Erro ao ler entrada.");

    println!("Escolha a operação: + ou *");
    io::stdin().read_line(&mut op).expect("Erro ao ler entrada.");

    num1 = num1_input.trim().parse().unwrap();
    num2 = num2_input.trim().parse().unwrap();

    if op.trim() == "+"{
        result = num1 + num2;
        println!("O resultado da soma é: {}", result);
    } else {
        result = num1 * num2;
        println!("O resultado da multiplicação é: {}", result);
    }
}