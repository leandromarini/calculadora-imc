import 'package:app2_calculadora_imc/models/imc_status_model.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final double imc;

  CustomListTile(this.imc, {this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    final Map imcMap = ImcStatusModel.getImcCategory(imc);
    if (title == imcMap['category']) {
      return Container(
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: Colors.black),
          ),
        ),
        color: imcMap['color'],
      );
    } else {
      return ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
      );
    }
  }
}
