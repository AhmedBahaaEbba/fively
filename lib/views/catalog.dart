import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import './sub_categories.dart';
import '../main.dart';
import '../models/dummy_data.dart';
import '../models/sliverGridDelegateWithFixedCrossAxisCountAndFixedHeight.dart';
import '../views/filters.dart';

class Catalog extends StatefulWidget {
  static const String routeName = '/catalog';

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  bool isListVisible = true;
  String selectedSort = 'Price: lowest to high';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: (isListVisible)
            ? null
            : Text(
                args,
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
          if (isListVisible)
            Padding(
              padding: EdgeInsets.only(
                left: 16 * w,
                top: 16 * h,
                bottom: 12 * h,
              ),
              child: FittedBox(
                child: Text(
                  args,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.only(left: 16 * w, bottom: 18 * h),
            height: 30 * h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: SubCategories.subCategories.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    right: 7 * w,
                  ),
                  padding: EdgeInsets.all(
                    7 * w,
                  ),
                  height: 30 * h,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Text(
                    SubCategories.subCategories[index],
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16 * w,
              right: 16 * w,
              bottom: 10 * w,
            ),
            width: 343 * w,
            height: 24 * h,
            color: Theme.of(context).primaryColor,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Filters.routeName);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.filter_list),
                      SizedBox(
                        width: 7 * w,
                      ),
                      Text(
                        'Filters',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 61 * w,
                ),
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
                          height: 352 * h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sort by',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                              ),
                              SizedBox(
                                height: 16 * h,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedSort = 'Popular';
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  child: Text(
                                    'Popular',
                                    style: (selectedSort == 'Popular')
                                        ? Theme.of(context)
                                            .textTheme
                                            .headline3
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .accentColor)
                                        : Theme.of(context).textTheme.headline3,
                                  ),
                                  height: 52 * h,
                                  color: (selectedSort == 'Popular')
                                      ? Theme.of(context).buttonColor
                                      : null,
                                  width: 375 * w,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16 * h,
                                    horizontal: 16 * w,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedSort = 'Newest';
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  child: Text(
                                    'Newest',
                                    style: (selectedSort == 'Newest')
                                        ? Theme.of(context)
                                            .textTheme
                                            .headline3
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .accentColor)
                                        : Theme.of(context).textTheme.headline3,
                                  ),
                                  height: 52 * h,
                                  color: (selectedSort == 'Newest')
                                      ? Theme.of(context).buttonColor
                                      : null,
                                  width: 375 * w,
                                  padding: EdgeInsets.all(16),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedSort = 'Customer review';
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  child: Text(
                                    'Customer review',
                                    style: (selectedSort == 'Customer review')
                                        ? Theme.of(context)
                                            .textTheme
                                            .headline3
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .accentColor)
                                        : Theme.of(context).textTheme.headline3,
                                  ),
                                  height: 52 * h,
                                  color: (selectedSort == 'Customer review')
                                      ? Theme.of(context).buttonColor
                                      : null,
                                  width: 375 * w,
                                  padding: EdgeInsets.all(16),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedSort = 'Price: lowest to high';
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  child: Text(
                                    'Price: lowest to high',
                                    style: (selectedSort ==
                                            'Price: lowest to high')
                                        ? Theme.of(context)
                                            .textTheme
                                            .headline3
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .accentColor)
                                        : Theme.of(context).textTheme.headline3,
                                  ),
                                  height: 52 * h,
                                  color:
                                      (selectedSort == 'Price: lowest to high')
                                          ? Theme.of(context).buttonColor
                                          : null,
                                  width: 375 * w,
                                  padding: EdgeInsets.all(16),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedSort = 'Price: highest to low';
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  child: Text(
                                    'Price: highest to low',
                                    style: (selectedSort ==
                                            'Price: highest to low')
                                        ? Theme.of(context)
                                            .textTheme
                                            .headline3
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .accentColor)
                                        : Theme.of(context).textTheme.headline3,
                                  ),
                                  height: 52 * h,
                                  color:
                                      (selectedSort == 'Price: highest to low')
                                          ? Theme.of(context).buttonColor
                                          : null,
                                  width: 375 * w,
                                  padding: EdgeInsets.all(16),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.swap_vert),
                      SizedBox(
                        width: 11 * w,
                      ),
                      Container(
                        width: 100 * w,
                        child: Text(
                          selectedSort,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 63 * w,
                ),
                (isListVisible)
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            isListVisible = !isListVisible;
                          });
                        },
                        child: Icon(Icons.view_module),
                      )
                    : InkWell(
                        onTap: () {
                          setState(() {
                            isListVisible = !isListVisible;
                          });
                        },
                        child: Icon(Icons.view_list),
                      ),
              ],
            ),
          ),
          // StatefulBuilder(
          //   builder: (BuildContext context, void Function(void Function()) setState) {  },
          //   child: Container(
          //     height: 510 * h,
          //     color: Colors.red,
          //   ),
          // ),
          (isListVisible)
              ? Container(
                  height: 510 * h,
                  color: Theme.of(context).primaryColor,
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 16 * h,
                          ),
                          Container(
                            width: 375 * w,
                            height: 114 * h,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 16 * w,
                                  child: Container(
                                    width: 343 * w,
                                    height: 104 * h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Theme.of(context).accentColor,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 104 * w,
                                          height: 104 * h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://picsum.photos/360'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                products[index].category,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline3,
                                              ),
                                              SizedBox(
                                                height: 4 * h,
                                              ),
                                              Text(
                                                products[index].title,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption,
                                              ),
                                              SizedBox(
                                                height: 5 * h,
                                              ),
                                              Row(
                                                children: [
                                                  RatingBar(
                                                    itemSize: 16,
                                                    initialRating:
                                                        products[index].rate,
                                                    minRating: 0,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      setState(
                                                        () {
                                                          products[index].rate =
                                                              (rating * 2);
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  Text(
                                                    // '(${products[index].rate * 2})',
                                                    '(${products[index].rate.toStringAsFixed(0)})',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5 * h,
                                              ),
                                              Text(
                                                '${products[index].price}\$',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline3,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 16,
                                  bottom: 0,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      shape: CircleBorder(),
                                      elevation: 1,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        print(products[index].favorite);
                                        products[index].favorite =
                                            !products[index].favorite;
                                        print(products[index].favorite);
                                      });
                                    },
                                    child: (products[index].favorite)
                                        ? Icon(
                                            Icons.favorite,
                                            color:
                                                Theme.of(context).buttonColor,
                                          )
                                        : Icon(
                                            Icons.favorite_border,
                                            color:
                                                Theme.of(context).canvasColor,
                                          ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              : Container(
                  padding: EdgeInsets.only(
                    left: 16 * w,
                    right: 16 * w,
                    top: 16 * h,
                  ),
                  height: 580 * h,
                  // color: Theme.of(context).buttonColor,
                  child: GridView.builder(
                    // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //   crossAxisCount: 2,
                    //   childAspectRatio: ((164 * w) / (260 * h)),
                    // ),
                    gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      crossAxisCount: 2,
                      height: 260 * h,
                      mainAxisSpacing: 26 * h,
                      crossAxisSpacing: 16 * w,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 162 * w,
                                height: 184 * h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Theme.of(context).buttonColor,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://picsum.photos/360'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  RatingBar(
                                    itemSize: 16,
                                    initialRating: products[index].rate,
                                    minRating: 0,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      setState(
                                        () {
                                          products[index].rate = (rating * 2);
                                        },
                                      );
                                    },
                                  ),
                                  Text(
                                    // '(${products[index].rate * 2})',
                                    '(${products[index].rate.toStringAsFixed(0)})',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ],
                              ),
                              Text(
                                products[index].title,
                                style: Theme.of(context).textTheme.caption,
                              ),
                              Text(
                                products[index].category,
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Text(
                                '${products[index].price}\$',
                                style: Theme.of(context).textTheme.headline3,
                              ),

                              // Positioned(
                              //   left: 16 * w,
                              //   child: Container(
                              //     width: 343 * w,
                              //     height: 104 * h,
                              //     decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(8),
                              //       color: Theme.of(context).accentColor,
                              //     ),
                              //     child: Row(
                              //       children: [
                              //         Container(
                              //           width: 104 * w,
                              //           height: 104 * h,
                              //           decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.only(
                              //               topLeft: Radius.circular(8),
                              //               bottomLeft: Radius.circular(8),
                              //             ),
                              //             image: DecorationImage(
                              //               image: NetworkImage(
                              //                   'https://picsum.photos/111/106'),
                              //             ),
                              //           ),
                              //         ),
                              //         Padding(
                              //           padding: EdgeInsets.all(10),
                              //           child: Column(
                              //             crossAxisAlignment:p
                              //                 CrossAxisAlignment.start,
                              //             children: [
                              //               Text(
                              //                 products[index].category,
                              //                 style: Theme.of(context)
                              //                     .textTheme
                              //                     .headline3,
                              //               ),
                              //               SizedBox(
                              //                 height: 4 * h,
                              //               ),
                              //               Text(
                              //                 products[index].title,
                              //                 style: Theme.of(context)
                              //                     .textTheme
                              //                     .caption,
                              //               ),
                              //               SizedBox(
                              //                 height: 5 * h,
                              //               ),
                              //               Row(
                              //                 children: [
                              //                   RatingBar(
                              //                     itemSize: 16,
                              //                     initialRating:
                              //                         products[index].rate,
                              //                     minRating: 0,
                              //                     direction: Axis.horizontal,
                              //                     allowHalfRating: true,
                              //                     itemCount: 5,
                              //                     itemBuilder: (context, _) =>
                              //                         Icon(
                              //                       Icons.star,
                              //                       color: Colors.amber,
                              //                     ),
                              //                     onRatingUpdate: (rating) {
                              //                       setState(
                              //                         () {
                              //                           products[index].rate =
                              //                               (rating * 2);
                              //                         },
                              //                       );
                              //                     },
                              //                   ),
                              //                   Text(
                              //                     // '(${products[index].rate * 2})',
                              //                     '(${products[index].rate.toStringAsFixed(0)})',
                              //                     style: Theme.of(context)
                              //                         .textTheme
                              //                         .bodyText2,
                              //                   ),
                              //                 ],
                              //               ),
                              //               SizedBox(
                              //                 height: 5 * h,
                              //               ),
                              //               Text(
                              //                 '${products[index].price}\$',
                              //                 style: Theme.of(context)
                              //                     .textTheme
                              //                     .headline3,
                              //               ),
                              //             ],
                              //           ),
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // Positioned(
                              //   right: 16,
                              //   bottom: 0,
                              //   child: ElevatedButton(
                              //     color: Theme.of(context).primaryColor,
                              //     shape: CircleBorder(),
                              //     onPressed: () {
                              //       setState(() {
                              //         print(products[index].favorite);
                              //         products[index].favorite =
                              //             !products[index].favorite;
                              //         print(products[index].favorite);
                              //       });
                              //     },
                              //     elevation: 1,
                              //     child: (products[index].favorite)
                              //         ? Icon(
                              //             Icons.favorite,
                              //             color: Theme.of(context).buttonColor,
                              //           )
                              //         : Icon(
                              //             Icons.favorite_border,
                              //             color: Theme.of(context).canvasColor,
                              //           ),
                              //   ),
                              // )
                            ],
                          ),
                          Positioned(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).primaryColor,
                                shape: CircleBorder(),
                                elevation: 1,
                              ),
                              onPressed: () {
                                setState(() {
                                  print(products[index].favorite);
                                  products[index].favorite =
                                      !products[index].favorite;
                                  print(products[index].favorite);
                                });
                              },
                              child: (products[index].favorite)
                                  ? Icon(
                                      Icons.favorite,
                                      color: Theme.of(context).buttonColor,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: Theme.of(context).canvasColor,
                                    ),
                            ),
                            right: -24 * w,
                            bottom: 60 * h,
                          ),
                        ],
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
