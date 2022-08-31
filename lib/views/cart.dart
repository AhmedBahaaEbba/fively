import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/cart_item.dart';

class Cart extends StatelessWidget {
  final List<CartItem> items = [
    CartItem(
      title: 'Pullover',
      imageUrl: 'https://picsum.photos/200',
      color: 'Black',
      size: 'L',
      price: '51',
      quantity: '1',
    ),
    CartItem(
      title: 'T-Shirt',
      imageUrl: 'https://picsum.photos/200',
      color: 'Gray',
      size: 'L',
      price: '30',
      quantity: '1',
    ),
    CartItem(
      title: 'Sport Dress',
      imageUrl: 'https://picsum.photos/200',
      color: 'Black',
      size: 'M',
      price: '43',
      quantity: '1',
    ),
    CartItem(
      title: 'Pullover',
      imageUrl: 'https://picsum.photos/200',
      color: 'Black',
      size: 'L',
      price: '51',
      quantity: '1',
    ),
    CartItem(
      title: 'T-Shirt',
      imageUrl: 'https://picsum.photos/200',
      color: 'Gray',
      size: 'L',
      price: '30',
      quantity: '1',
    ),
    CartItem(
      title: 'Sport Dress',
      imageUrl: 'https://picsum.photos/200',
      color: 'Black',
      size: 'M',
      price: '43',
      quantity: '1',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 22,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Bag',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 24 * h,
              ),
              Container(
                width: 343 * w,
                height: 360 * h,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return items[index];
                  },
                ),
              ),
              SizedBox(
                height: 24 * h,
              ),
              InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    Container(
                      width: 343 * w,
                      height: 36 * h,
                      padding: EdgeInsets.symmetric(
                          vertical: 12 * h, horizontal: 20 * w),
                      child: Text(
                        'Enter your promo code',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      width: 36 * w,
                      height: 36 * h,
                      right: 0,
                      child: CircleAvatar(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Theme.of(context).accentColor,
                          size: 18,
                        ),
                        backgroundColor: Theme.of(context).iconTheme.color,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24 * h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total amount:',
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 14),
                  ),
                  Text(
                    '124\$',
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        .copyWith(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 24 * h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  padding: EdgeInsets.symmetric(
                    vertical: 16 * h,
                    horizontal: 131 * w,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                onPressed: () {},
                child: Text(
                  'CHECK OUT',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
