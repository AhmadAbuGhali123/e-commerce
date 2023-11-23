import 'package:ecommerce/Screen/completeProf.dart';
import 'package:ecommerce/Screen/forgetPass.dart';
import 'package:ecommerce/Screen/loginPage.dart';
import 'package:ecommerce/Screen/register.dart';
import 'package:ecommerce/Screen/screensearsh.dart';
import 'package:flutter/cupertino.dart';

import '../Screen/openscreen.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/register': (context) => RegisterPage(),
    '/complateProf': (context) => complateProf(),
    '/ForgetPass': (context) => ForgetPass(),
    '/LoginPage': (context) => LoginPage(),
    '/ScreenSearsh': (context) => ScreenSearch(),
    '/OpenScreen':(context) => OpenScreen(),
  };
}
