import 'package:app2_calculadora_imc/widgets/custom_list_tile.dart';
import 'package:app2_calculadora_imc/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final double imc;

  ResultDialog(this.imc);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: CustomTitle('Seu IMC é: ${imc.toStringAsFixed(2)}', imc),
      content: SingleChildScrollView(
        child: Wrap(
          children: [
            CustomListTile(
              imc,
              title: 'Abaixo do peso',
              subtitle: 'Menor ou igual a 18.5',
            ),
            CustomListTile(
              imc,
              title: 'Peso normal',
              subtitle: 'Entre 18.6 e 24.9',
            ),
            CustomListTile(
              imc,
              title: 'Sobrepeso',
              subtitle: 'Entre 25 e 29.9',
            ),
            CustomListTile(
              imc,
              title: 'Obesidade grau I',
              subtitle: 'Entre 30 e 34.9',
            ),
            CustomListTile(
              imc,
              title: 'Obesidade grau II',
              subtitle: 'Entre 35 e 39.9',
            ),
            CustomListTile(
              imc,
              title: 'Obesidade grau III',
              subtitle: 'Maior ou igual a 40',
            ),
          ],
        ),
      ),
      actions: [
        FlatButton(
          onPressed: () => _dispose(context),
          child: Text('VOLTAR'),
        ),
      ],
    );
  }

  _dispose(context) {
    Navigator.of(context).pop();
  }
}
