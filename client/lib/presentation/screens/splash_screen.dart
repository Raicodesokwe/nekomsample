import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:supplier/core/core.dart';
import 'package:supplier/presentation/presentation.dart';

import '../widgets/splash_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController scaleController;
  late AnimationController btnController;
  late double scale;
  bool isVisible = true;

  @override
  void initState() {
    scaleController = AnimationController(vsync: this);
    btnController = AnimationController(
      vsync: this,
      duration: 250.ms,
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    btnController.dispose();
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    scale = 1 - btnController.value;

    // void onTapDown(TapDownDetails details) {
    //   btnController.forward();
    // }

    // void onTapUp(TapUpDetails details) {
    //   setState(() {
    //     isVisible = false;
    //   });
    // }

    return SafeArea(
      child: Scaffold(
          backgroundColor: tertiaryColor,
          body: Column(
            children: [
              SizedBox(
                height: size.height * 0.15,
              ),
              const SplashImage(),
              SizedBox(
                height: size.height * 0.05,
              ),
              const Text(
                'Nekom',
                style: TextStyle(
                  fontFamily: 'grifterbold',
                  fontWeight: FontWeight.w600,
                  fontSize: 45,
                  color: Color(0xFFF6BFF6),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'We take your omnichannel business to the next level by allowing you to manage all aspects of your business from your mobile device',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              GestureDetector(
                // onTapUp: onTapUp,
                // onTapDown: onTapDown,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                child: Transform.scale(
                  scale: scale,
                  child: AnimatedContainer(
                    onEnd: () {
                      scaleController.forward();
                    },
                    duration: 200.ms,
                    curve: Curves.easeInOut,
                    height: 50,
                    width: isVisible ? size.width * 0.8 : 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Visibility(
                        visible: isVisible,
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: tertiaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
              )
                  .animate()
                  .slideY(begin: 1, duration: 1000.ms, curve: Curves.easeInOut)
                  .animate(
                    autoPlay: false,
                    controller: scaleController,
                  )
                  .scale(
                      end: const Offset(30, 30),
                      delay: 100.ms,
                      curve: Curves.easeInOut)
            ],
          )),
    );
  }
}
