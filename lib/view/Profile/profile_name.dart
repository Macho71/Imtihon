import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Profile_name extends StatelessWidget {
  const Profile_name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Muslimbek",
      style: GoogleFonts.lato(
        textStyle: TextStyle(
            color: Colors.blue.shade700,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            letterSpacing: .5),
      ),
    );
  }
}
