import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'brand_filter.dart';

class Filters extends StatefulWidget {
  static const String routeName = '/filters';

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  RangeValues _values = RangeValues(0, 200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filters',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: h * 16,
              horizontal: w * 16,
            ),
            child: Text(
              'Price range',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Container(
            height: h * 88,
            color: Theme.of(context).accentColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${_values.start.toStringAsFixed(0)}',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        '\$${_values.end.toStringAsFixed(0)}',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
                RangeSlider(
                  min: 0,
                  max: 200,
                  activeColor: Color(0xFFDB3022),
                  inactiveColor: Color(0xFF9B9B9B),
                  values: _values,
                  onChanged: (RangeValues values) {
                    setState(() {
                      _values = values;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: h * 16,
              horizontal: w * 16,
            ),
            child: Text(
              'Colors',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Container(
            height: h * 88,
            color: Theme.of(context).accentColor,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: h * 16,
              horizontal: w * 16,
            ),
            child: Text(
              'Sizes',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Container(
            height: h * 88,
            color: Theme.of(context).accentColor,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: h * 16,
              horizontal: w * 16,
            ),
            child: Text(
              'Category',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Container(
            height: h * 120,
            color: Theme.of(context).accentColor,
          ),
          ListTile(
            title: Text(
              'Brand',
              style: Theme.of(context).textTheme.headline3,
            ),
            subtitle: Text(
              'adidas Originals, Jack & Jones, s.Oliver',
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(BrandFilter.routeName);
              },
              icon: Icon(Icons.arrow_forward_ios),
              color: Theme.of(context).primaryColorDark,
            ),
          ),
        ],
      ),
    );
  }
}
