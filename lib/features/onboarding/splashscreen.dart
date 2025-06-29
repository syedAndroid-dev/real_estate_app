import 'package:flutter/material.dart';
import 'package:real_estate_app/config/route/routes.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/ic_onboarding.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF21628A).withAlpha(10), Color(0xFF21628A)],
                ),
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                Spacer(flex: 1),
                Image.asset(
                  'assets/images/ic_logo.png',
                  width: 200,
                  height: 200,
                ),

                Transform.translate(
                  offset: Offset(0, -50),
                  child: Text(
                    'Rise \n Real Estate',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                Spacer(flex: 1),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 60.0,
                      vertical: 14.0,
                    ),
                    backgroundColor: Color(0xFF8BC83F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/OnBoarding');
                  },
                  child: Text(
                    'lets\'s start',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),

                SizedBox(height: 20.0),
                Text('Made with love', style: TextStyle(color: Colors.white)),
                Text(
                  'v1.0',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
