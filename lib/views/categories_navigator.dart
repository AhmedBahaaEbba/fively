import 'package:fively_ecommerce/views/brand_filter.dart';
import 'package:flutter/material.dart';

import './error.dart';
import './sub_categories.dart';
import '../views/catalog.dart';
import 'categories.dart';
import 'filters.dart';

class CategoriesNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> categoriesNavigatorKey;

  CategoriesNavigator({final this.categoriesNavigatorKey});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: categoriesNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return Categories();
                case SubCategories.routeName:
                  return SubCategories();
                case Catalog.routeName:
                  return Catalog();
                case Filters.routeName:
                  return Filters();
                case BrandFilter.routeName:
                  return BrandFilter();
                default:
                  return Error();
              }
            });
      },
    );
  }
}
