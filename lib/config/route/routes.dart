import 'package:flutter/material.dart';
import 'package:real_estate_app/features/login/explore_screen.dart';
import 'package:real_estate_app/features/login/faq_and_support.dart';
import 'package:real_estate_app/features/login/signIn_screen.dart';
import 'package:real_estate_app/features/onboarding/onboardingscreen.dart';
import 'package:real_estate_app/features/onboarding/splashscreen.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _meterialRoute(const Splashscreen());

      case '/OnBoarding':
        return _meterialRoute(Onboardingscreen());

      case '/Auth':
        return _meterialRoute(const ExploreScreen());

      case '/SignIn':
        return _meterialRoute(const SigninScreen());

      case '/FaqAndSupport':
        return _meterialRoute(const FaqAndSupport());

      case '/Home':
        return _meterialRoute(const Scaffold());

      default:
        return _meterialRoute(const Scaffold());
    }
  }

  static Route<dynamic> _meterialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
