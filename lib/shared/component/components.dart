import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  @required Function function,
  @required String text,
  bool isUpperCase = true,
}) => Container(
    width: width,
    color: background,
    child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        )));

Widget defaultTextField({
  @required TextEditingController control,
  @required bool obscure,
  TextInputType type = TextInputType.visiblePassword,
  @required String label,
  @required Icon prefixIcon,
  Widget suffixIcon,
}) => TextFormField(
    controller: control,
    obscureText: obscure,
    keyboardType: type,
    onFieldSubmitted: (value) {
      print(value);
    },
    onChanged: (value) {
      print(value);
    },
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ));