void main() {
  funcaoTeste((nome, {idade, peso}) {});
}

// Aqui eu crio a fução com outra função de parâmetro.
void funcaoTeste(FuncaoTesteType funcaoTesteType) {}

// Aqui eu crio um tipo, c
typedef FuncaoTesteType = void Function(
  String nome, {
  required int? idade,
  required double? peso,
});
