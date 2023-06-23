import 'package:flutter/material.dart';
import 'package:user/core/reaponse_hende.dart';
import 'package:user/service/auth_sevice.dart';
import 'package:user/view/auth/asosiy_page.dart';
import 'package:user/view/auth/register.dart';

// ignore: must_be_immutable
class HomePAge extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  HomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create"),
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
                                      builder: (context) => Register()));
                            },
                            child: const Text("Sign up",
                                style: TextStyle(color: Colors.indigo))))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 145),
        child: FloatingActionButton.extended(
          onPressed: () async {
            dynamic response = await Service.sing(
                userName: userNameController.text,
                paswword: passwordController.text);
            //some loc
            userNameController.clear();

            passwordController.clear();
            if (response is SuccsesResponse) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AsosiyPage())));
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
      ),
    );
  }
}
