import 'package:ecommerce/Screen/completeProf.dart';
import 'package:ecommerce/Screen/forgetPass.dart';
import 'package:ecommerce/Screen/loginPage.dart';
import 'package:ecommerce/Screen/register.dart';
import 'package:ecommerce/Screen/screensearsh.dart';
import 'package:flutter/cupertino.dart';

import '../Screen/openscreen.dart';
import '../Screen/otpver.dart';
import '../Screen/splashscree.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/':(context) => SplashScreen(),
    RegisterPage.route: (context) => RegisterPage(),
    '/complateProf': (context) => complateProf(),
    '/ForgetPass': (context) => ForgetPass(),
    '/LoginPage': (context) => LoginPage(),
    '/ScreenSearsh': (context) => ScreenSearch(),
    '/OpenScreen':(context) => OpenScreen(),
    '/OtpVer':(context) => OtpVer(),
  };
}
