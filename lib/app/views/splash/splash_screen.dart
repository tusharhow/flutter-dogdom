import 'dart:async';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import '../../components/navigate.dart';
import '../auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      pushRemove(context: context, widget: const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadedSlideAnimation(
          beginOffset: const Offset(0.0, 5.0),
          endOffset: const Offset(0.0, 0.0),
          child: const Center(
            child: Image(
              image: AssetImage('assets/logos/logo.png'),
              height: 220,
              width: 220,
            ),
          ),
        ),
      ],
    ));
  }
}
