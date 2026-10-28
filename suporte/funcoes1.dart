void exibirOla() {
  print('Olá');
}

void exibirMsgPosicional(String msg) {
  print(msg);
}

void exibirMsgNomeado({required String msg}) {
  print(msg);
}

bool menorQue5(int numero) => numero < 5;

bool ehPar(int numero) => numero % 2 == 0;

int soma(int numero1, int numero2) => numero1 + numero2;
void main(List<String> args) {
  exibirOla();
  exibirMsgPosicional('Olá');
  exibirMsgNomeado(msg: 'Olá');
  print(menorQue5(10));
  print(ehPar(16));
  print(soma(10, 35));
} 