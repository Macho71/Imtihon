
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  bool isSuccess = false;
  String error = "";
  Future<dynamic> signIn() async {
    isLoading = true;
    notifyListeners();
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      isLoading = true;
      isSuccess = true;
      notifyListeners();
      return isSuccess;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user - not - found") {
        
        error = "Foydalanuvchi  topilmadi";
        debugPrint(error);
      } else if (e.code == "wrong-password") {
        error = "Parolni xato kiritdingiz";
        debugPrint(error);
      } else {
        error = "Noma'lum xato yuz berdi";
        debugPrint(error);
      }
    }
  }
}
