import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<void> main() async {
  // buscarCep();
  // buscarPosts();
  buscarCepErro();
}

buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
    }
  }
}

buscarCepErro() async {
  var url = 'https://viacep.com.br/ws/0100100870/json/';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
    }
  } else {
    print(response.statusCode);
    // print(response.body);
    print("Ocorreu um problema na execução: ${response.reasonPhrase}");
  }
}

buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      responseData.forEach((element) {
        print(element['id']);
      });
    }
  }
}
