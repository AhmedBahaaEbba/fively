import 'package:device_preview/device_preview.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fively_ecommerce/views/product_card.dart';
import 'package:flutter/material.dart';

import './utilits/theme.dart';
import './views/forgot_password.dart';
import './views/login.dart';
import './views/main_screen.dart';
import './views/sign_up.dart';

double h;
double w;
void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
      enabled: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) =>
          brightness == Brightness.light ? lightTheme : darkTheme,
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'E-Commerce',
          theme: theme,
          debugShowCheckedModeBanner: false,
          builder: DevicePreview.appBuilder,
          // locale: DevicePreview.of(context).locale,
          // home: HomePage(),
          routes: {
            '/': (context) => MainScreen(),
            SignUp.routeName: (context) => SignUp(),
            Login.routeName: (context) => Login(),
            ForgetPassword.routeName: (context) => ForgetPassword(),
            MainScreen.routeName: (context) => MainScreen(),
            ProductCard.routeName: (context) => ProductCard(),
          },
        );
      },
    );
  }
}
