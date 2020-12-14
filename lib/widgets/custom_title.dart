import 'package:app2_calculadora_imc/models/imc_status_model.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final double imc;

  CustomTitle(this.title, this.imc);

  @override
  Widget build(BuildContext context) {
    Map imcCategoryMap = ImcStatusModel.getImcCategory(imc);
    return Column(
      children: [
        Text(title),
        Text(
          imcCategoryMap['category'],
          style: TextStyle(color: imcCategoryMap['color']),
        )
      ],
    );
  }
}
