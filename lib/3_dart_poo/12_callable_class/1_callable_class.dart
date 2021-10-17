import 'package:dart_fundamentos/3_dart_poo/12_callable_class/envia_email.dart';

void main() {
  var enviarEmail = EnviarEmail();
  enviarEmail('octaviomartins10@gmail.com');
  enviarEmail.enviar('octaviomartins10@gmail.com');
}
