import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<void> main() async {
  // buscarCep();
  // buscarPosts();
  // buscarCepErro();
  // salvarPost();
  atualizarPost();
}

Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var mapaRequest = {
    'id': '1',
    'title': 'Post novo',
    'body': 'Descrição do post',
    'userId': '1',
  };
  var response = await http.put(
    Uri.parse(url),
    body: convert.jsonEncode(mapaRequest),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  );
  print(response.statusCode);
  print(response.body);
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descrição do post',
    'userId': '1',
  };
  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));
  print(response.statusCode);
  print(response.body);
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
