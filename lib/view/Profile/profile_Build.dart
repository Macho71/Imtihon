import 'package:flutter/material.dart';
import 'package:user/view/Profile/profile_image.dart';
import 'package:user/view/Profile/profile_items.dart';
import 'package:user/view/Profile/profile_name.dart';

// ignore: depend_on_referenced_packages

// ignore: camel_case_types
class Profile_Build extends StatefulWidget {
  const Profile_Build({super.key});

  @override
  State<Profile_Build> createState() => _Profile_BuildState();
}

// ignore: camel_case_types
class _Profile_BuildState extends State<Profile_Build> {
  final List _inform = [
    {"icon": "assets/icons/1_.png", "text": "Items"},
    {"icon": "assets/icons/2_.png", "text": "Track Order"},
    {"icon": "assets/icons/3_.png", "text": "Order History"},
    {"icon": "assets/icons/4_.png", "text": "Address"},
    {"icon": "assets/icons/5_.png", "text": "Reward System"},
    {"icon": "assets/icons/6_.png", "text": "Settings"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          const Profile_Image(),
          const SizedBox(height: 20),
          const Profile_name(),
          const SizedBox(height: 15),
          Profile_items(inform: _inform)
        ],
      ),
    );
  }
}
