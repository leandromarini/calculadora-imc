import 'package:app2_calculadora_imc/helpers/parse_helper.dart';
import 'package:app2_calculadora_imc/models/person_model.dart';

class PersonController {
  Person person = Person();

  void setPersonWeight(String value) {
    person.weight = ParseHelper.toDouble(value);
  }

  void setPersonHeight(String value) {
    person.height = ParseHelper.toDouble(value) / 100;
  }

  calcular() => person.imc;
}
