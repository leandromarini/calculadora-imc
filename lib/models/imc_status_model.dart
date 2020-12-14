import 'package:flutter/material.dart';

class ImcStatusModel {
  static getImcCategory(double imc) {
    if (imc >= 40) {
      return {
        'category': 'Obesidade grau III',
        'color': Colors.red[800],
      };
    } else if (imc >= 35) {
      return {
        'category': 'Obesidade grau II',
        'color': Colors.red[700],
      };
    } else if (imc >= 30) {
      return {
        'category': 'Obesidade grau I',
        'color': Colors.red[600],
      };
    } else if (imc >= 25) {
      return {
        'category': 'Sobrepeso',
        'color': Colors.red,
      };
    } else if (imc >= 18.6) {
      return {
        'category': 'Peso normal',
        'color': Colors.green,
      };
    } else {
      return {
        'category': 'Abaixo do peso',
        'color': Colors.orange,
      };
    }
  }
}
