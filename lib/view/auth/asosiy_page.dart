import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:user/view/auth/splash_cren.dart';

class AsosiyPage extends StatefulWidget {
  const AsosiyPage({super.key});

  @override
  State<AsosiyPage> createState() => _AsosiyPageState();
}

class _AsosiyPageState extends State<AsosiyPage> {
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
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 35, color: Colors.indigo),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset("assets/welcome.svg"),
              ),
              const Text("Happy to see you here my new friend",
                  style: TextStyle(fontSize: 20, color: Colors.indigo))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const SplashScren())));
        },
        hoverColor: Colors.white,
      ),
    );
  }
}
