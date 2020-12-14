import 'dart:ffi';

import 'package:app2_calculadora_imc/controllers/person_controller.dart';
import 'package:app2_calculadora_imc/dialogs/result_dialog.dart';
import 'package:app2_calculadora_imc/helpers/validator_helper.dart';
import 'package:flutter/material.dart';

class ImcCalculatorPage extends StatefulWidget {
  @override
  _ImcCalculatorPageState createState() => _ImcCalculatorPageState();
}

class _ImcCalculatorPageState extends State<ImcCalculatorPage> {
  final _controller = PersonController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar('Calculadora de IMC', centerTitle: true),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: _buildForm(),
        ));
  }

  _buildAppBar(String title, {bool centerTitle: false}) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(title),
      centerTitle: centerTitle,
    );
  }

  _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildIcon(Icons.person_outline, 100.0),
          _buildTextFormField('Peso (kg)',
              onSaved: _controller.setPersonWeight),
          _buildSizedBox(),
          _buildTextFormField('Altura (cm)',
              onSaved: _controller.setPersonHeight),
          _buildSizedBox(),
          _buildRaisedButton('CALCULAR', _calculate,
              color: Theme.of(context).primaryColor),
          _buildSizedBox(),
          _buildRaisedButton('LIMPAR', _clear,
              color: Theme.of(context).errorColor),
        ],
      ),
    );
  }

  _buildIcon(iconName, double size) {
    return Icon(
      iconName,
      size: size,
      color: Theme.of(context).primaryColor,
    );
  }

  _buildTextFormField(String label, {Function(String) onSaved}) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      style: TextStyle(fontSize: 16),
      textAlign: TextAlign.center,
      onSaved: onSaved,
      validator: ValidatorHelper.isValidText,
    );
  }

  _buildSizedBox({height: 10.0}) {
    return SizedBox(
      height: height,
    );
  }

  _buildRaisedButton(String text, Function function, {color: Colors.blue}) {
    return RaisedButton(
      onPressed: function,
      child: Text(text),
      color: color,
    );
  }

  void _clear() {
    _formKey.currentState.reset();
  }

  void _calculate() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      final imc = _controller.calcular();
      showDialog(
        context: context,
        builder: (context) => ResultDialog(imc),
      );
    }
  }
}
