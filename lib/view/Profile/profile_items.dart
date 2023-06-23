import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import 'Items_Build/Settings.dart';

// ignore: camel_case_types
class Profile_items extends StatelessWidget {
 const Profile_items({
    Key? key,
    required List inform,
  })  : _inform = inform,
        super(key: key);

  final List _inform;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.60,
      child: ListView.builder(
          itemCount: _inform.length,
          scrollDirection: Axis.vertical,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const Settings_Build();
                  })));
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.shade100,
                          blurRadius: 5,
                          spreadRadius: 4,
                          offset: const Offset(2, 2)),
                      const BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          spreadRadius: 4,
                          offset: Offset(-2, -2))
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const  SizedBox(
                          width: 50,
                          // child: Image.asset(_inform[index]["icon"])
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          _inform[index]["text"],
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                letterSpacing: .5),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        // const Image(image: AssetImage("assets/icons/right.png"))
                      ],
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
