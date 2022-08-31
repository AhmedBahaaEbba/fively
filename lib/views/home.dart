import 'package:fively_ecommerce/views/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../main.dart';

class Home extends StatefulWidget {
  static String routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double rating = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: w * 375,
                  height: h * 536,
                  child: Image.asset('assets/images/shopping.png'),
                ),
                Positioned(
                  left: 16 * w,
                  bottom: 86 * h,
                  child: Container(
                    height: 96 * h,
                    width: 190 * w,
                    child: Text(
                      'Fashion sale',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
                Positioned(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 8 * h, horizontal: 60 * w),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Check',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  left: 10 * w,
                  bottom: 32 * h,
                )
              ],
            ),
            SizedBox(
              height: 32 * h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18 * w,
                right: 14 * w,
                bottom: 4 * h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sale',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View all',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18 * w),
              child: Text(
                'Super summer sale',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Container(
              height: h * 276,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(ProductCard.routeName);
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 20 * w,
                        right: 20 * w,
                        bottom: 16 * h,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            child:
                                Image.asset('assets/images/place_holder_1.png'),
                            height: h * 184,
                            width: w * 148,
                          ),
                          Positioned(
                            top: 8 * h,
                            left: 10 * w,
                            child: Container(
                              width: 40 * w,
                              height: 24 * h,
                              decoration: BoxDecoration(
                                color: Color(0xFFDB3022),
                                borderRadius: BorderRadius.circular(29),
                              ),
                              child: Center(
                                child: Text(
                                  '-20%',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 60 * h,
                            right: 1 * w,
                            child: CircleAvatar(
                              radius: 26,
                              backgroundColor: Theme.of(context).accentColor,
                              child: IconButton(
                                icon: Icon(Icons.favorite_border),
                                color: Color(0xFFDADADA),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 55 * h,
                            left: 1 * w,
                            child: Row(
                              children: [
                                RatingBar(
                                  itemSize: 16,
                                  initialRating: 5,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    setState(
                                      () {
                                        this.rating = (rating * 2);
                                      },
                                    );
                                  },
                                ),
                                Text(
                                  '(${rating.toStringAsFixed(0)})',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 1 * w,
                            bottom: 1 * h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dorothy Perkins',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Text(
                                  'Evening Dress',
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '15\$',
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                    SizedBox(
                                      width: 4 * w,
                                    ),
                                    Text(
                                      '12\$',
                                      style:
                                          Theme.of(context).textTheme.headline4,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20 * w,
                      right: 20 * w,
                      bottom: 16 * h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/images/place_holder_2.png'),
                          height: h * 184,
                          width: w * 148,
                        ),
                        Positioned(
                          top: 8 * h,
                          left: 10 * w,
                          child: Container(
                            width: 40 * w,
                            height: 24 * h,
                            decoration: BoxDecoration(
                              color: Color(0xFFDB3022),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Center(
                              child: Text(
                                '-15%',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60 * h,
                          right: 1 * w,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Theme.of(context).accentColor,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Color(0xFFDADADA),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55 * h,
                          left: 1 * w,
                          child: Row(
                            children: [
                              RatingBar(
                                itemSize: 16,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(
                                    () {
                                      this.rating = (rating * 2);
                                    },
                                  );
                                },
                              ),
                              Text(
                                '(${rating.toStringAsFixed(0)})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1 * w,
                          bottom: 1 * h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dorothy Perkins',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'Evening Dress',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15\$',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  SizedBox(
                                    width: 4 * w,
                                  ),
                                  Text(
                                    '12\$',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20 * w,
                      right: 20 * w,
                      bottom: 16 * h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/images/place_holder_3.png'),
                          height: h * 184,
                          width: w * 148,
                        ),
                        Positioned(
                          top: 8 * h,
                          left: 10 * w,
                          child: Container(
                            width: 40 * w,
                            height: 24 * h,
                            decoration: BoxDecoration(
                              color: Color(0xFFDB3022),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Center(
                              child: Text(
                                '-25%',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60 * h,
                          right: 1 * w,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Theme.of(context).accentColor,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Color(0xFFDADADA),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55 * h,
                          left: 1 * w,
                          child: Row(
                            children: [
                              RatingBar(
                                itemSize: 16,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(
                                    () {
                                      this.rating = (rating * 2);
                                    },
                                  );
                                },
                              ),
                              Text(
                                '(${rating.toStringAsFixed(0)})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1 * w,
                          bottom: 1 * h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dorothy Perkins',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'Evening Dress',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15\$',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  SizedBox(
                                    width: 4 * w,
                                  ),
                                  Text(
                                    '12\$',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20 * w,
                      right: 20 * w,
                      bottom: 16 * h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/images/place_holder_4.png'),
                          height: h * 184,
                          width: w * 148,
                        ),
                        Positioned(
                          top: 8 * h,
                          left: 10 * w,
                          child: Container(
                            width: 40 * w,
                            height: 24 * h,
                            decoration: BoxDecoration(
                              color: Color(0xFFDB3022),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Center(
                              child: Text(
                                '-10%',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60 * h,
                          right: 1 * w,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Theme.of(context).accentColor,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Color(0xFFDADADA),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55 * h,
                          left: 1 * w,
                          child: Row(
                            children: [
                              RatingBar(
                                itemSize: 16,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(
                                    () {
                                      this.rating = (rating * 2);
                                    },
                                  );
                                },
                              ),
                              Text(
                                '(${rating.toStringAsFixed(0)})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1 * w,
                          bottom: 1 * h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dorothy Perkins',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'Evening Dress',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15\$',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  SizedBox(
                                    width: 4 * w,
                                  ),
                                  Text(
                                    '12\$',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20 * w,
                      right: 20 * w,
                      bottom: 16 * h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/images/place_holder_5.png'),
                          height: h * 184,
                          width: w * 148,
                        ),
                        Positioned(
                          top: 8 * h,
                          left: 10 * w,
                          child: Container(
                            width: 40 * w,
                            height: 24 * h,
                            decoration: BoxDecoration(
                              color: Color(0xFFDB3022),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Center(
                              child: Text(
                                '-30%',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60 * h,
                          right: 1 * w,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Theme.of(context).accentColor,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Color(0xFFDADADA),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55 * h,
                          left: 1 * w,
                          child: Row(
                            children: [
                              RatingBar(
                                itemSize: 16,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(
                                    () {
                                      this.rating = (rating * 2);
                                    },
                                  );
                                },
                              ),
                              Text(
                                '(${rating.toStringAsFixed(0)})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1 * w,
                          bottom: 1 * h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dorothy Perkins',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'Evening Dress',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15\$',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  SizedBox(
                                    width: 4 * w,
                                  ),
                                  Text(
                                    '12\$',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32 * h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18 * w,
                right: 14 * w,
                bottom: 4 * h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View all',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18 * w),
              child: Text(
                'You’ve never seen it before!',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Container(
              height: h * 276,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 20 * w,
                      right: 20 * w,
                      bottom: 16 * h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/images/place_holder_1.png'),
                          height: h * 184,
                          width: w * 148,
                        ),
                        Positioned(
                          top: 8 * h,
                          left: 10 * w,
                          child: Container(
                            width: 40 * w,
                            height: 24 * h,
                            decoration: BoxDecoration(
                              color: Color(0xFF222222),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Center(
                              child: Text(
                                'NEW',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60 * h,
                          right: 1 * w,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Theme.of(context).accentColor,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Color(0xFFDADADA),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55 * h,
                          left: 1 * w,
                          child: Row(
                            children: [
                              RatingBar(
                                itemSize: 16,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(
                                    () {
                                      this.rating = (rating * 2);
                                    },
                                  );
                                },
                              ),
                              Text(
                                '(${rating.toStringAsFixed(0)})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1 * w,
                          bottom: 1 * h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dorothy Perkins',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'Evening Dress',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15\$',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20 * w,
                      right: 20 * w,
                      bottom: 16 * h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/images/place_holder_2.png'),
                          height: h * 184,
                          width: w * 148,
                        ),
                        Positioned(
                          top: 8 * h,
                          left: 10 * w,
                          child: Container(
                            width: 40 * w,
                            height: 24 * h,
                            decoration: BoxDecoration(
                              color: Color(0xFF222222),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Center(
                              child: Text(
                                'NEW',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60 * h,
                          right: 1 * w,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Theme.of(context).accentColor,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Color(0xFFDADADA),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55 * h,
                          left: 1 * w,
                          child: Row(
                            children: [
                              RatingBar(
                                itemSize: 16,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(
                                    () {
                                      this.rating = (rating * 2);
                                    },
                                  );
                                },
                              ),
                              Text(
                                '(${rating.toStringAsFixed(0)})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1 * w,
                          bottom: 1 * h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dorothy Perkins',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'Evening Dress',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15\$',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20 * w,
                      right: 20 * w,
                      bottom: 16 * h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/images/place_holder_3.png'),
                          height: h * 184,
                          width: w * 148,
                        ),
                        Positioned(
                          top: 8 * h,
                          left: 10 * w,
                          child: Container(
                            width: 40 * w,
                            height: 24 * h,
                            decoration: BoxDecoration(
                              color: Color(0xFF222222),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Center(
                              child: Text(
                                'NEW',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60 * h,
                          right: 1 * w,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Theme.of(context).accentColor,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Color(0xFFDADADA),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55 * h,
                          left: 1 * w,
                          child: Row(
                            children: [
                              RatingBar(
                                itemSize: 16,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(
                                    () {
                                      this.rating = (rating * 2);
                                    },
                                  );
                                },
                              ),
                              Text(
                                '(${rating.toStringAsFixed(0)})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1 * w,
                          bottom: 1 * h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dorothy Perkins',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'Evening Dress',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15\$',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20 * w,
                      right: 20 * w,
                      bottom: 16 * h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/images/place_holder_4.png'),
                          height: h * 184,
                          width: w * 148,
                        ),
                        Positioned(
                          top: 8 * h,
                          left: 10 * w,
                          child: Container(
                            width: 40 * w,
                            height: 24 * h,
                            decoration: BoxDecoration(
                              color: Color(0xFF222222),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Center(
                              child: Text(
                                'NEW',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60 * h,
                          right: 1 * w,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Theme.of(context).accentColor,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Color(0xFFDADADA),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55 * h,
                          left: 1 * w,
                          child: Row(
                            children: [
                              RatingBar(
                                itemSize: 16,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(
                                    () {
                                      this.rating = (rating * 2);
                                    },
                                  );
                                },
                              ),
                              Text(
                                '(${rating.toStringAsFixed(0)})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1 * w,
                          bottom: 1 * h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dorothy Perkins',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'Evening Dress',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15\$',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20 * w,
                      right: 20 * w,
                      bottom: 16 * h,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/images/place_holder_5.png'),
                          height: h * 184,
                          width: w * 148,
                        ),
                        Positioned(
                          top: 8 * h,
                          left: 10 * w,
                          child: Container(
                            width: 40 * w,
                            height: 24 * h,
                            decoration: BoxDecoration(
                              color: Color(0xFF222222),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Center(
                              child: Text(
                                'NEW',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60 * h,
                          right: 1 * w,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Theme.of(context).accentColor,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: Color(0xFFDADADA),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 55 * h,
                          left: 1 * w,
                          child: Row(
                            children: [
                              RatingBar(
                                itemSize: 16,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: .5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(
                                    () {
                                      this.rating = (rating * 2);
                                    },
                                  );
                                },
                              ),
                              Text(
                                '(${rating.toStringAsFixed(0)})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 1 * w,
                          bottom: 1 * h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dorothy Perkins',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                'Evening Dress',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '15\$',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
