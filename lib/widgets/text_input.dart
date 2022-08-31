import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String title;
  final bool obscure;

  const TextInput(this.title, this.obscure);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: title,
        labelStyle: Theme.of(context).textTheme.caption,
        fillColor: Theme.of(context).accentColor,
        filled: true,
        border: InputBorder.none,
        // suffixIcon: Icon(
        //   Icons.check,
        //   color: Color(0xFF2AA952),
        // ),
        // enabledBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.white),
        //   borderRadius: BorderRadius.circular(0),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.white),
        //   borderRadius: BorderRadius.circular(0),
        // ),
      ),
      keyboardType: TextInputType.text,
      obscureText: obscure,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
