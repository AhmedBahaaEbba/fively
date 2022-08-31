import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../main.dart';

class ProductCard extends StatefulWidget {
  static const String routeName = '/product-card';

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  double _rating = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sport Dress',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 413,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/295/413'),
                      ),
                    ),
                    width: 275 * w,
                    height: 413 * h,
                  ),
                  SizedBox(
                    width: 4 * w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/295/413'),
                      ),
                    ),
                    width: 275 * w,
                    height: 413 * h,
                  ),
                  SizedBox(
                    width: 4 * w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/295/413'),
                      ),
                    ),
                    width: 275 * w,
                    height: 413 * h,
                  ),
                  SizedBox(
                    width: 4 * w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/295/413'),
                      ),
                    ),
                    width: 275 * w,
                    height: 413 * h,
                  ),
                  SizedBox(
                    width: 4 * w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/295/413'),
                      ),
                    ),
                    width: 275 * w,
                    height: 413 * h,
                  ),
                  SizedBox(
                    width: 4 * w,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16 * w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                backgroundColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 368 * h,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 16 * h),
                                          width: 60 * w,
                                          height: 6 * h,
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).canvasColor,
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 16 * h),
                                          child: Text(
                                            'Select size',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16 * h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 16 * w,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                    width: 100 * w,
                                                    height: 40 * h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                          color:
                                                              Theme.of(context)
                                                                  .canvasColor),
                                                      color: Theme.of(context)
                                                          .accentColor,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'XS',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .subtitle1,
                                                      ),
                                                    )),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                    width: 100 * w,
                                                    height: 40 * h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                          color:
                                                              Theme.of(context)
                                                                  .canvasColor),
                                                      color: Theme.of(context)
                                                          .accentColor,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'S',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .subtitle1,
                                                      ),
                                                    )),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                    width: 100 * w,
                                                    height: 40 * h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                          color:
                                                              Theme.of(context)
                                                                  .canvasColor),
                                                      color: Theme.of(context)
                                                          .accentColor,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'M',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .subtitle1,
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16 * h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 16 * w,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                    width: 100 * w,
                                                    height: 40 * h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                          color:
                                                              Theme.of(context)
                                                                  .canvasColor),
                                                      color: Theme.of(context)
                                                          .accentColor,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'L',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .subtitle1,
                                                      ),
                                                    )),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                    width: 100 * w,
                                                    height: 40 * h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                          color:
                                                              Theme.of(context)
                                                                  .canvasColor),
                                                      color: Theme.of(context)
                                                          .accentColor,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'XL',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .subtitle1,
                                                      ),
                                                    )),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                  width: 100 * w,
                                                  height: 40 * h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: Theme.of(context)
                                                            .canvasColor),
                                                    color: Theme.of(context)
                                                        .accentColor,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'XXL',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .subtitle1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 16 * w,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Size info',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline3,
                                              ),
                                              IconButton(
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_right),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  })
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                              width: 343 * w,
                                              height: 48 * h,
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .buttonColor,
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'ADD TO CART',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1,
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10 * h,
                                horizontal: 12 * w,
                              ),
                              width: 138 * w,
                              height: 40 * h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Theme.of(context).accentColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Size',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 16 * w,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10 * h,
                                horizontal: 12 * w,
                              ),
                              width: 138 * w,
                              height: 40 * h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Theme.of(context).accentColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Color',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 4 * w,
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Theme.of(context).accentColor,
                        child: IconButton(
                          icon: Icon(Icons.favorite_border),
                          color: Color(0xFFDADADA),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22 * h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'H&M',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        '\$19.99',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  Text(
                    'Short black dress',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  SizedBox(
                    height: 8 * h,
                  ),
                  Row(
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
                              this._rating = (rating * 2);
                            },
                          );
                        },
                      ),
                      Text(
                        '(${_rating.toStringAsFixed(0)})',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16 * h,
                  ),
                  Text(
                    'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square  neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
