class Animal {
    constructor(nome, idade, especie) {
        this.nome = nome;
        this.idade = idade;
        this.especie = especie;
    }

    printInfo() {
        console.log(`Nome: ${this.nome}, Idade: ${this.idade}, Espécie: ${this.especie}`);
    }
}

class Cachorro extends Animal {
    constructor(nome, idade, especie, raca) {
        super(nome, idade, especie);
        this._raca = raca;  
    }

    printInfo() {
        super.printInfo();
        console.log(`Raça: ${this._raca}`);
    }
}

class Gato extends Animal {
    constructor(nome, idade, especie, cores) {
        super(nome, idade, especie);
        this.cores = cores;
    }

    printInfo() {
        super.printInfo();
        console.log(`Cores: ${this.cores.join(', ')}`);
    }
}

const animal = new Animal("Blu", 20, "Ararinha-azul");
animal.printInfo();
console.log();

const cachorro = new Cachorro("Katy", 5, "Canino", "Dachshund");
cachorro.printInfo();
console.log();

const gato = new Gato("Miaudito", 7, "Felino", ["Preto", "Branco"]);
gato.printInfo();