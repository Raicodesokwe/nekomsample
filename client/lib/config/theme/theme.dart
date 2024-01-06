import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/core.dart';

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    textTheme: GoogleFonts.figtreeTextTheme(
      Theme.of(context).textTheme,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(
          color: tertiaryColor,
        )),
  );
}
