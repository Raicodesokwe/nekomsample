import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: SvgPicture.asset('assets/images/nekomlogo.svg'))
        .animate()
        .fadeIn(duration: 1000.ms)
        .scale(
          duration: 200.ms,
          curve: Curves.easeInOut,
        );
  }
}
