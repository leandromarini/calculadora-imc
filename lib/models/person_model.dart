class Person {
  double weight = 0.0;
  double height = 0.0;

  Person({this.weight, this.height});

  double get imc => weight / (height * height);
}
