import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
// ignore: camel_case_types
class Boglanish_uchun_malumotlar extends StatelessWidget {
  const Boglanish_uchun_malumotlar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const  SizedBox(
            height: 20,
          ), 
          Text("Bog'lanish uchun ma'lumot:",
              style: GoogleFonts.getFont('Lato',
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            child: Container(
              color: Colors.white54,
              child: const TextField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "To'liq ism",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            child: Container(
              color: Colors.white54,
              child: const TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            child: Container(
              color: Colors.white54,
              child: const TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Telefon raqam:',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            child: Container(
              color: Colors.white54,
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Manzil:',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
