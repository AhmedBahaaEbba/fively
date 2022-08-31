import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/text_input.dart';

class ForgetPassword extends StatelessWidget {
  static String routeName = '/forget-password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.all(16 * w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot password',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 87 * h,
            ),
            Text(
              'Please, enter your email address. You will receive a link to create a new password via email.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16 * h, bottom: 55 * h),
              child: TextInput('Email', false),
            ),
            SizedBox(
              height: 48 * h,
              width: 343 * w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25 * w),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'SEND',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
