import 'package:fively_ecommerce/main.dart';
import 'package:flutter/material.dart';

class BrandFilter extends StatefulWidget {
  static const routeName = '/brand-filter';
  @override
  _BrandFilterState createState() => _BrandFilterState();
}

class _BrandFilterState extends State<BrandFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Brand',
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Theme.of(context).textTheme.headline1.color,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: w * 16,
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
