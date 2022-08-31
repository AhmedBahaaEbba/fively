import 'package:flutter/material.dart';

import '../main.dart';

class Profile extends StatelessWidget {
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
          horizontal: 16 * w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My profile',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 16 * h,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                ),
                SizedBox(
                  width: 16 * w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ahmed Bahaa',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'AhmedBahaa@mail.com',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 28 * h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My orders',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(
                      height: 8 * h,
                    ),
                    Text(
                      'Already have 12 orders',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xFF9B9B9B),
                  ),
                )
              ],
            ),
            Divider(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shipping addresses',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(
                      height: 8 * h,
                    ),
                    Text(
                      '3 addresses',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xFF9B9B9B),
                  ),
                )
              ],
            ),
            Divider(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment methods',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(
                      height: 8 * h,
                    ),
                    Text(
                      'Visa  **34',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xFF9B9B9B),
                  ),
                )
              ],
            ),
            Divider(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Promo codes',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(
                      height: 8 * h,
                    ),
                    Text(
                      'You have special promo codes',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xFF9B9B9B),
                  ),
                )
              ],
            ),
            Divider(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My reviews',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(
                      height: 8 * h,
                    ),
                    Text(
                      'Reviews for 4 items',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xFF9B9B9B),
                  ),
                )
              ],
            ),
            Divider(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(
                      height: 8 * h,
                    ),
                    Text(
                      'Notifications, password',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xFF9B9B9B),
                  ),
                )
              ],
            ),
            Divider(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
