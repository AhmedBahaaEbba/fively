import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error '),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Some Thing Went Wrong!!'),
      ),
    );
  }
}
