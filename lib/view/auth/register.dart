import 'package:flutter/material.dart';

import 'package:user/core/reaponse_hende.dart';

import 'package:user/service/auth_sevice.dart';
import 'package:user/view/auth/home_page.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.blue, Colors.white]),
        ),
        child: Center(
          child: Container(
            height: 220,
            width: 420,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.white, Colors.blue]),
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                    hintText: "Username",
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(hintText: "Email"),
                ),
                TextFormField(
                  textAlign: TextAlign.left,
                  controller: passwordController,
                  decoration: const InputDecoration(hintText: "Password"),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    const Text("Have an account?"),
                    Center(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePAge()));
                            },
                            child: const Text("Sign in",
                                style: TextStyle(color: Colors.indigo))))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          dynamic response = await AuthService.regster(
              userName: userNameController.text,
              email: emailController.text,
              paswword: passwordController.text);
          //some loc
          userNameController.clear();
          emailController.clear();
          passwordController.clear();
          if (response is SuccsesResponse) {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => HomePAge())));
          } else if (response is ErrorResponse) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(response.toString())));
            return;
          } else if (response is ExcaptionResponse) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(response.toString())));
          }
        },
        label: const Text("SIGN UP"),
      ),
    );
  }
}
