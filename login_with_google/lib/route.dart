import 'package:flutter/material.dart';
import 'package:login_with_google/profile.dart';

const String profile = 'profile_page';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case profile:
      return MaterialPageRoute(
        builder: (context) => Profile(),
      );
    default:
      throw ('this route doesnt exis');
  }
}
