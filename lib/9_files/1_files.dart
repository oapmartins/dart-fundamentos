import 'dart:io';

Future<void> main() async {
  var file = File('lib/9_files/files/file.txt');

  // Leitura Sincrona
  var fileData = file.readAsStringSync();
  // print(fileData);

  // Leitura Asyncrona
  var fileData2 = await file.readAsString();
  // print(fileData2);

  // Leitura linha Sincrona
  var fileLista = file.readAsLinesSync();
  // print(fileLista);

  // Leitura linha Asincrona
  var fileLista2 = await file.readAsLines();
  // print(fileLista2);

  //
  // Escrevendo em arquivos
  //
  var file2 = File('lib/9_files/files/file2.txt');

  // Escrevendo em Arquivos asyncrono
  // await file2.writeAsString('Teste\n', mode: FileMode.append);
  // print(file2.readAsLinesSync());

  // Escrevendo em Arquivos syncrono
  // file2.writeAsStringSync('Octávio teste');

  // Escrevendo várias vezes no arquivo (listas)
  var listaNomes = ['Octávio', 'Maria', 'Claudio', 'João'];
  var file3 = File('lib/9_files/files/file3.txt');
  var writeFile3 = file3.openWrite(mode: FileMode.append);

  listaNomes.forEach((nome) => writeFile3.write('$nome \n'));
}
