import 'package:flutter_test/flutter_test.dart';
import 'package:nyoba_testing_flutter/person.dart';

void main() {
  group("Checking class person", () {
    person p;
    p = person();
    test('Inisialisasi objek person', () {
      expect(p.name, equals("ridho.com"));
      expect(p.age, equals(0));
      expect(p.name, isNotEmpty);
    });

    // test("Name must be contain .com", (){
    //   expect(p.name, contains(equals(".com")));
    // });

    test("Age must be positive", (){
      p.age = -5;
      expect(p.age, isPositive);
      expect(p.age, isNonNegative);
      // expect(p.age, isNotEmpty);
    });
  });
}
