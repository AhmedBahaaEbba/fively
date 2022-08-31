import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../views/login.dart';
import '../views/sign_up.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height / 812;
    w = MediaQuery.of(context).size.width / 375;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 200 * h),
            Container(
              child: Image.asset('assets/images/welcome.png'),
              height: 200 * h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 32 * h, bottom: 16 * h),
              child:
                  Text('Welcome', style: Theme.of(context).textTheme.headline1),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80 * w),
              child: Text(
                'Ready to start shopping. sign up to get Started.',
                style: TextStyle(color: Colors.grey, height: 1.8 * h),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10 * h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.symmetric(horizontal: 80 * w, vertical: 16 * h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10 * w),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(SignUp.routeName);
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10 * h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: Theme.of(context).textTheme.headline1.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                InkWell(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Login.routeName);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
