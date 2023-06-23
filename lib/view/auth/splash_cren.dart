import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:user/view/auth/register.dart';

class SplashScren extends StatefulWidget {
  const SplashScren({super.key});

  @override
  State<SplashScren> createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.blue, Colors.white]),
          ),
          child: Column(
            children: [
              SvgPicture.asset("assets/anzam.svg"),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset("assets/welcome.svg"),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Register())));
            },
            child: const Text(
              "NEXT",
              style: TextStyle(color: Colors.indigo, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
