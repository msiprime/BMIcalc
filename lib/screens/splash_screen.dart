import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  RxBool loader = true.obs;

  @override
  void initState() {
    _loader();
    super.initState();
  }

  void _loader() async {
    await Future.delayed(const Duration(seconds: 3), () {
      loader.value = false;
      Get.offAndToNamed('/home-page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, spacing: 30.0, children: [
          Center(child: FlutterLogo(size: 100.0)),
          Transform.scale(
            scale: 0.5,
            child: const CircularProgressIndicator(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
