import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './sub_categories.dart';
import '../main.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Categories',
            style: Theme.of(context).textTheme.headline6,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Women',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Tab(
                child: Text(
                  'Men',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Tab(
                child: Text(
                  'Kids',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Body(),
            Body(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16 * h,
        horizontal: 16 * w,
      ),
      child: Column(
        children: [
          Container(
            width: 343 * w,
            height: 100 * h,
            decoration: BoxDecoration(
              color: Theme.of(context).buttonColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'SUMMER SALES',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      .copyWith(fontSize: 24),
                ),
                Text(
                  'Up to 50% off',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16 * h,
          ),
          CardItem(
            title: 'New',
            // image: 'assets/images/place_holder_1.png',
            image: 'https://picsum.photos/625/350',
          ),
          SizedBox(
            height: 16 * h,
          ),
          CardItem(
            title: 'Clothes',
            // image: 'assets/images/place_holder_2.png',
            image: 'https://picsum.photos/625/350',
          ),
          SizedBox(
            height: 16 * h,
          ),
          CardItem(
            title: 'Shoes',
            // image: 'assets/images/place_holder_3.png',
            image: 'https://picsum.photos/625/350',
          ),
          SizedBox(
            height: 16 * h,
          ),
          CardItem(
            title: 'Accessories',
            // image: 'assets/images/place_holder_4.png',
            image: 'https://picsum.photos/625/350',
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String image;

  CardItem({this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(SubCategories.routeName),
      child: Container(
        width: 343 * w,
        height: 100 * h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 172 * w,
              height: 100 * h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  topLeft: Radius.circular(8),
                ),
                color: Theme.of(context).accentColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 39 * h,
                  left: 23 * w,
                ),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, color: Color(0xFF222222)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  image: DecorationImage(image: NetworkImage(image))),
              width: 171 * w,
              height: 100 * h,
            ),
          ],
        ),
      ),
    );
  }
}
