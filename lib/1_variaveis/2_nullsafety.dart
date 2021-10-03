// variáveis de nível superior não podem ser iniciadas depois
// Não é permitido
String nomeCompletoSuperior = 'Octavio';
String? nomeCompletoSuperiorOpc;

void main() {
  // Variáveis locais não precisam ser inicializadas de cara, porém
  // podem ser criadas sem valor e depois atribuidas um valor.
  String nomeCompleto;
  String? nomeCompletoOpc;

  nomeCompleto = 'Octávio';

  // Variáveis locais que são nulas(nullable) por padrão
  // Se for atribuido um valor a ela, automaticamente elas são
  // Promovidas a não nulo (non-null)
  nomeCompletoOpc = '';

  print(nomeCompleto);
}
