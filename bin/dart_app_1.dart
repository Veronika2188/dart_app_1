void main() {
  var bob = User('Bob', 40, true, ['football', 'skating']);
  // ..name = 'Bob'
  // ..age = 40;
  bob.info();

  var alex = User('Alex', 25, false, ['basketball']);
  alex.info();
}

class User {
  String name = '';
  int age = 0;
  bool isHappy = false;
  List<String> hobbies = [];

  User(name, [age, isHappy, hobbies]) {
    this.name = name;
    this.age = age;
    this.isHappy = isHappy;
    this.hobbies = hobbies;
  }

  void info() {
    var happy = isHappy ? 'happy' : 'not happy';
    print('User $name is $age years old. He is $happy. His hobbies:');
    for (var el in hobbies) {
      print(el);
    }
  }
}
