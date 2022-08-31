import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class CartItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String price;
  final String color;
  final String size;
  final String quantity;

  CartItem({
    this.title,
    this.price,
    this.color,
    this.size,
    this.quantity,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343 * w,
      height: 104 * h,
      margin: EdgeInsets.only(bottom: 24 * h),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 104 * w,
            height: 104 * h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
          Container(
            width: 239 * w,
            height: 104 * h,
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4 * w,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Color: ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          color,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 13 * w,
                    ),
                    Row(
                      children: [
                        Text(
                          'Size: ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          size,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8 * w,
                ),
                Row(
                  children: [
                    Container(
                      width: 36 * w,
                      height: 36 * h,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.remove,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16 * w,
                    ),
                    Text(
                      quantity,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    SizedBox(
                      width: 16 * w,
                    ),
                    Container(
                      width: 36 * w,
                      height: 36 * h,
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.add,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 80 * w,
                    ),
                    Text(
                      '$price\$',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
