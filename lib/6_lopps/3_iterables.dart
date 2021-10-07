void main() {
  var numeros = List.generate(10, (index) => index);

  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 2)
      .toList();

  print(numerosAte6);

  final numerosrRemoverAte6 = numeros
      .skipWhile((numero) => numero < 7)
      .where((numero) => numero != 2)
      .toList();

  print(numerosrRemoverAte6);

  var numeroStringList = numeros.map((n) => 'número é $n');
  print(numeroStringList);
}
