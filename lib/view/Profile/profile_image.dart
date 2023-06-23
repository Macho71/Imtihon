import 'package:flutter/material.dart';
// ignore: camel_case_types
class Profile_Image extends StatelessWidget {
  const Profile_Image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                spreadRadius: 4,
                offset:const Offset(2, 2)),
               const  BoxShadow(
                color: Colors.white,
                blurRadius: 5,
                spreadRadius: 4,
                offset: Offset(-2, -2))
          ],
          image: const DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              fit: BoxFit.cover)),
    ));
  }
}
