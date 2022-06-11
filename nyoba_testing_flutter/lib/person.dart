import 'dart:math';

class person {
  late String name;
  late int _age;
  late List<int> LuckyNumber;

  int get age => _age;
  set age (int value){
    if (value < 0) {
      value *= -1;
    }
    _age = value;
  }

  person(){
    name = "ridho.com";
    age = 0;
    Random r = Random();
    LuckyNumber = [];
    for (int i = 0; i < 3; i+= 1) {
      LuckyNumber.add(r.nextInt(11));
    }
  }
}