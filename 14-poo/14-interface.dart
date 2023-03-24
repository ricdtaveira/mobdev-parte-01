abstract class Veiculo {
  void freia();
  void acelera();
  void vira();
}

class Aviao implements Veiculo {
  void freia() {
    print("Aviao freia !");
  }

  void acelera() {
    print("Aviao acelera !");
  }

  void vira() {
    print("Aviao vira !");
  }
}

class Jegue implements Veiculo {
  void freia() {
    print("Jegue freia !");
  }

  void acelera() {
    print("Jegue acelera !");
  }

  void vira() {
    print("Jegue vira !");
  }
}

class Jipe implements Veiculo {
  void freia() {
    print("Jipe freia !");
  }

  void acelera() {
    print("Jipe acelera !");
  }

  void vira() {
    print("Jipe vira !");
  }
}

class Onibus implements Veiculo {
  void freia() {
    print("Onibus freia !");
  }

  void acelera() {
    print("Onibus acelera !");
  }

  void vira() {
    print("Onibus vira !");
  }
}

class Manobrista {
  void estaciona(Veiculo veiculo) {
    veiculo.vira();
    veiculo.acelera();
    veiculo.freia();
  }
}

void main() {
  var mano = new Manobrista();
  var aviao = new Aviao();
  var jegue = new Jegue();
  var onibus = new Onibus();
  var jipe = new Jipe();

  mano.estaciona(aviao);
  mano.estaciona(jegue);
  mano.estaciona(onibus);
  mano.estaciona(jipe);
}
