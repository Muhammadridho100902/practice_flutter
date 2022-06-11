import 'package:flutter_test/flutter_test.dart';
import 'package:nyoba_testing_flutter/calcu.dart';

void main() {
  group("Checking Class Calcu", (){
    test("The Calcu should be increment", (){
      final calcu = Calcu();

      calcu.increment();

      expect(calcu.Value, 1);
    });

    test("The Calcu should be decrement", (){
      final calcu = Calcu();

      calcu.decrement();

      expect(calcu.Value, -1);
    });
  });
}