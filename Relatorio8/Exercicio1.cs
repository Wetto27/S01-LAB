using System;

public class Cachorro
{
    public string Nome { get; set; }
    public int Idade { get; set; }

    public Cachorro(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    public void ShowNome()
    {
        Console.WriteLine("O nome do cachorro é: " + Nome);
    }

    public virtual void ShowIdade()
    {
        Console.WriteLine("A idade do cachorro é: " + Idade);
    }
}

public class CachorroGrande : Cachorro
{
    private int tamanho;

    public CachorroGrande(string nome, int idade, int tamanho) : base(nome, idade)
    {
        this.tamanho = tamanho;
    }

    public override void ShowIdade()
    {
        Console.WriteLine("A idade do cachorro grande é: " + Idade);
    }

    public void ShowTamanho()
    {
        Console.WriteLine("O tamanho do cachorro grande é: " + tamanho + " cm");
    }
}

public class CachorroPequeno : Cachorro
{
    public CachorroPequeno(string nome, int idade) : base(nome, idade)
    {
    }

    public override void ShowIdade()
    {
        Console.WriteLine("A idade do cachorro pequeno é: " + Idade);
    }
}

class Program
{
    static void Main(string[] args)
    {
        Cachorro cachorro = new Cachorro("Bolt", 3);
        CachorroPequeno cachorroPequeno = new CachorroPequeno("Mel", 1);
        CachorroGrande cachorroGrande = new CachorroGrande("Theo", 6, 70);

        // Chamando métodos e atributos
        Console.WriteLine("Cachorro:");
        cachorro.ShowNome();
        cachorro.ShowIdade();

        Console.WriteLine("\nCachorro Pequeno:");
        cachorroPequeno.ShowNome();
        cachorroPequeno.ShowIdade();

        Console.WriteLine("\nCachorro Grande:");
        cachorroGrande.ShowNome();
        cachorroGrande.ShowIdade();
        cachorroGrande.ShowTamanho();
    }
}