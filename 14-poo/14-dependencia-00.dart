// O operador late faz uma verificação tardia de nulidade
// em tempo de execução.

class Carro {
  late Motor _motor; // Associação

  Carro() {
    this._motor = new Motor();
  }

  void ligar() {
    _motor.ligarMotor();
  }
}

class Motor {
  void ligarMotor() {
    print("Motor Ligado!");
  }
}

void main() {
  Carro meuCarro = new Carro(); // Dependencia
  meuCarro.ligar(); // Chamada da funcionalidade da Classe Carro
}
