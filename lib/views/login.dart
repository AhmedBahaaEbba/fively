import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../views/forgot_password.dart';
import '../widgets/text_input.dart';
import 'main_screen.dart';

class Login extends StatelessWidget {
  static String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(16 * w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .copyWith(fontSize: 34),
              ),
              SizedBox(
                height: 73 * h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8 * h),
                child: TextInput('Email', false),
              ),
              TextInput('Password', true),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot your password?',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                        fontSize: 14),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    padding: EdgeInsets.all(0),
                    iconSize: 16 * w,
                    color: Theme.of(context).buttonColor,
                    onPressed: () {
                      Navigator.of(context).pushNamed(ForgetPassword.routeName);
                    },
                  )
                ],
              ),
              SizedBox(
                height: 48 * h,
                width: 343 * w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(MainScreen.routeName);
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25 * w),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 194 * h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Or sign up with social account',
                    style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).textTheme.headline1.color),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
