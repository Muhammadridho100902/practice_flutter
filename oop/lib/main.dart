// 1. defining the class
// class Car {
//   String? Name;
//   int? Number;

//   void display(){
//     print("The Name of the car is: ${Name}");
//     print("Car Number is: ${Name}");
//   }
// }

// 2.1. declaring object EX.1
// void car(){
//   Car car = new Car();
//   car.Name = "Mclaren";
//   car.Number = 10;

//   car.display();
// }

// 2.2. declaring object EX.2
// class Car {
//   String? name;
//   int? number;

//   void enginerStart(){
//     print("Engine Start");
//   }

//   void engineStop(){
//     print("Engine Stop");
//   }
// }

// void main(){
//   Car car = Car();
//   car.name = "Toyota";
//   car.number = 10;

//   // called the function
//   car.enginerStart();
//   car.engineStop();
// }

// 3. constructor
// Keypoint in constructor:
// 1. The constructor’s name should be the same as the class name.
// 2. It can be parameterized.
// 3. Constructor doesn’t have any return type.
// 4. Constructor is only called once at the time of the object creation.
// 5. Dart supports three types of constructors: Default, Parameterized, and Named constructors.

// 3.1. default contructor
// class Animal {
//   var animalName;
//   var animalAge;

//   Animal(){
//     print("This is default Contructor");
//   }

//   void displayAnimalValue(){
//     print("The Animal Name: " + animalName);
//     print("The Animal Age: " + animalAge);
//   }
// }

// void main(List<String> args) {
//   Animal animal = Animal();

//   animal.animalName = "Kucing";
//   animal.animalAge = 10;

//   animal.displayAnimalValue();
// }

// 3.2. paramaterized contructor
// class Animal {
//   var animalName;
//   var animalAge;

//   Animal(var animalName, var animalAge){
//     this.animalName = animalName;
//     this.animalAge = animalAge;
//   }

//   void displayAnimalValue(){
//     print("The Animal Name: " + animalName);
//     print("The Animal Age: " + animalAge);
//   }
// }

// void main(List<String> args) {
//   var animal = Animal("Kucing", 11);

//   animal.displayAnimalValue();
// }

// 3.3. name of contructor
// class Animal {
//   var animalName;
//   var animalAge;

//   Animal({this.animalName, this.animalAge});

//   void displayAnimalValue() {
//     print("The Animal Name: " + animalName);
//     print("The Animal Age: " + animalAge);
//   }
// }

// void main(List<String> args) {
//   var animal = Animal(animalName: "kucing", animalAge: 1);

//   animal.displayAnimalValue();
// }

// 4. Private Encapsulation
// class Bike {
//   var _Name;
// }

// void main(List<String> args) {
//   var bike = Bike();
//   bike._Name = "Zx-10";
//   print(bike._Name);
// }

// 4.1. read only field
class Bike {
  final _name = "Zx-10";
}

void main(List<String> args) {
  var bike = Bike();
  print(bike._name);
}
