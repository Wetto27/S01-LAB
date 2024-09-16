#include <iostream>
#include <string>

using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    Pessoa(const string& n, int i) : nome(n), idade(i) {}

    int getIdade() const {
        return idade;
    }

    void imprimirNome() const {
        cout << "O nome é: " << nome << endl;
    }

    void imprimirIdade() const {
        cout << "A idade é: " << idade << " anos" << endl;
    }
};

class Professor : public Pessoa {
public:
    Professor(const string& n, int i) : Pessoa(n, i) {}

    void imprimirIdade() const {
        cout << "A idade é: " << getIdade() << " anos" << endl;
    }
};

class Aluno : public Pessoa {
private:
    string matricula;

public:
    Aluno(const string& n, int i, const string& m) : Pessoa(n, i), matricula(m) {}

    void imprimirIdade() const {
        cout << "A idade é: " << getIdade() << " anos" << endl;
    }

    string getMatricula() const {
        return matricula;
    }
};

int main() {
    Pessoa pessoa("Jorge", 45);
    Professor professor("Claudia", 38);
    Aluno aluno("Wellington", 20, "228");

    cout << "Pessoa:" << endl;
    pessoa.imprimirNome();
    pessoa.imprimirIdade();

    cout << "\nProfessor:" << endl;
    professor.imprimirNome();
    professor.imprimirIdade();

    cout << "\nAluno:" << endl;
    aluno.imprimirNome();
    aluno.imprimirIdade();
    cout << "A matrícula é: " << aluno.getMatricula() << endl;

    return 0;
}