import 'package:calculandoimc/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('calcularIMC', () {
      Pessoa pessoa = Pessoa("", 70, 1.75);
      expect(pessoa.calcularIMC(), equals(22.86));
    });
  });
}
