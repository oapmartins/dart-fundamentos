String? nomeCompleto = 'Octávio';
void main() {
  // Conditional Property Access com Null Awere Operator.
  print(nomeCompleto?.toLowerCase() ?? 'Nome não preenchido');
}
