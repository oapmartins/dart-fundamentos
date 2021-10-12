void main() {
  var lista = ['Octávio'];
  print(lista.hashCode);
  funcao(lista);
  print(lista);
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  nomes.add('Martins');
}
