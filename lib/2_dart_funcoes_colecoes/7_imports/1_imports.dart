import 'somas/soma.dart' as soma;
import 'somas_nova/soma.dart' as nova_soma;

void main() {
  var totalInt = soma.somaInteiros(10, 10);
  var totalDoubles = nova_soma.somaDoubles(10.5, 10.4);

  print('Total ints: $totalInt');
  print('Total Doubles: $totalDoubles');
}
