import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../views/login.dart';
import '../views/main_screen.dart';
import '../widgets/text_input.dart';

class SignUp extends StatelessWidget {
  static String routeName = '/sign-up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.all(0),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.all(16 * w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign up',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 73 * h,
            ),
            TextInput('Name', false),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8 * h),
              child: TextInput('Email', false),
            ),
            TextInput('Password', true),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Already have an account?',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  padding: EdgeInsets.all(0),
                  iconSize: 16 * w,
                  onPressed: () {
                    Navigator.of(context).pushNamed(Login.routeName);
                  },
                )
              ],
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
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(MainScreen.routeName);
                },
                // color: Theme.of(context).buttonColor,
                child: Text(
                  'SIGN UP',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            SizedBox(
              height: 126 * h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Or sign up with social account',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            SizedBox(
              height: 12 * h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 64 * h,
                    width: 92 * w,
                    margin: EdgeInsets.only(right: 16 * w),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(24 * w),
                    ),
                    child: Center(
                      child: Container(
                        child: Image.asset('assets/icons/google.png'),
                        width: 20 * w,
                        height: 20 * h,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 64 * h,
                    width: 92 * w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(24 * w),
                    ),
                    child: Center(
                      child: Container(
                        child: Image.asset('assets/icons/facebook.png'),
                        width: 20 * w,
                        height: 20 * h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
