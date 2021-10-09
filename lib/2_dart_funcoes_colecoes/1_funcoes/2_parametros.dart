void main() {
  // Parâmetros obrigatórios por default.
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');

  // Parâmeros Nomeados.
  // Parâmetros são nullables por default
  // Eles podem ser promovidos para não nullos com checagem.
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');

  // Parâmemtros nomeados obrigatórios
  print(
      'A soma de 10.5 + 10.5 é ${somaDoublesObrigatorios(numero1: 10.5, numero2: 10.5)}');

  parametrosNormaisComNomeados1(2, nome: 'Octávio', idade: 19);
  parametrosNormaisComNomeados2(10, 'Octávio', 18);
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDoubles({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

double somaDoublesObrigatorios(
    {required double numero1, required double numero2}) {
  return numero1 + numero2;
}

double somaDoublesDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados1(int numero1,
    {required String nome, required int idade}) {}
void parametrosNormaisComNomeados2(int numero1, [String? nome, int? idade]) {}
