import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(forceMaterialTransparency: true),
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: true,
        child: Column(
          children: [
            SvgPicture.asset('assets/images/ic_login_top_image.svg'),
            SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  spacing: 10.0,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Let’s',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: ' Sign In ',
                            style: TextStyle(
                              color: Color(0xFF1F4C6B),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 2),

                    Text('quis nostrud exercitation ullamco laboris nisi ut'),

                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        filled: true,
                        fillColor: Color(0xFFF5F4F8),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        border: InputBorder.none,
                      ),
                    ),

                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        filled: true,
                        fillColor: Color(0xFFF5F4F8),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      obscureText: true,
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color(0xFF1F4C6B),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: EdgeInsets.symmetric(
                              horizontal: 100.0,
                              vertical: 14.0,
                            ),
                            backgroundColor: Color(0xFF8BC83F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Row(
                      spacing: 10,
                      children: [
                        Expanded(child: Divider(color: Colors.grey.shade400)),
                        Text('OR', style: TextStyle(fontSize: 10)),
                        Expanded(child: Divider(color: Colors.grey.shade400)),
                      ],
                    ),

                    SizedBox(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: 30,
                        children: [
                          Expanded(
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F4F8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: FaIcon(FontAwesomeIcons.google),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F4F8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Color(0xFF1278F3),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t have an account?',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: ' Register ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
