void main() {
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(2);
  numerosLista.add(1);
  print(numerosLista);

  // Os sets '{}' não permitem valores duplicados.
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(2);
  numerosSet.add(1);
  print(numerosSet);

  // Também é possível transformar uma lista normal, em um set; (REmovendo os valores duplicados).
  print('.toSet()');
  print(numerosLista.toSet());

  // Com o set também é possível ver a diferença de dois sets.
  // Os mesmos métodos que tem na lista, tem no set.
  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 2, 10, 11, 12};
  print(numeros1.difference(numeros2));

  // Juntando duas listas, desconsiderando duplicados.
  print(numeros1.union(numeros2));

  // Somente os que são iguais nas duas listas.
  print(numeros1.intersection(numeros2));

  // Busca o valor que é identico ao buscado.
  print(numeros2.lookup(12));
}
