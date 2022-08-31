import 'package:flutter/material.dart';

import './catalog.dart';
import '../main.dart';

class SubCategories extends StatelessWidget {
  static const routeName = '/sub-categories';
  static List<String> subCategories = [
    'Tops',
    'Shirts & Blouses',
    'Cardigans & Sweaters',
    'Knitwear',
    'Blazers',
    'Outerwear',
    'Pants',
    'Jeans',
    'Shorts',
    'Skirts',
    'Dresses',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
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
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 343 * w,
            height: 48 * h,
            margin: EdgeInsets.symmetric(horizontal: 16 * w, vertical: 16 * h),
            decoration: BoxDecoration(
              color: Theme.of(context).buttonColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'VIEW ALL ITEMS',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16 * w, bottom: 16 * h),
            child: Text(
              'Choose category',
              style: Theme.of(context).textTheme.caption.copyWith(fontSize: 14),
            ),
          ),
          Container(
            height: 542 * h,
            child: ListView.builder(
              itemCount: subCategories.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(Catalog.routeName,
                            arguments: subCategories[index]);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 40 * w,
                          bottom: 8 * h,
                          top: 8 * h,
                        ),
                        child: Text(
                          subCategories[index],
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
