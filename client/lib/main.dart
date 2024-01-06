import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supplier/presentation/screens/splash_screen.dart';

import 'config/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nekomdemo',
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(context),
      home: const SplashScreen(),
    );
  }
}
