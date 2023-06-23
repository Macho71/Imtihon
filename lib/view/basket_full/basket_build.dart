import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:user/view/basket_full/tolov.dart';

import 'boglanish_uchun_malumotlar.dart';
import 'buturtmalar.dart';


// ignore: camel_case_types
class Basket_Build extends StatefulWidget {
  const Basket_Build({super.key});

  @override
  State<Basket_Build> createState() => _Basket_BuildState();
}

// ignore: camel_case_types
class _Basket_BuildState extends State<Basket_Build> {
  final int _itemcount = 3;
//late final String _tolov_usuli;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Savat",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor:const Color.fromARGB(255, 71, 158, 240)
      ),
      backgroundColor: const Color.fromARGB(255, 71, 158, 240),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Buyurtmalar ro'yxati:",
                      style: GoogleFonts.getFont('Lato',
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 10,
                  ),
                  Buyurtmalar(itemcount: _itemcount)
                ],
              ),
            ),
            const Boglanish_uchun_malumotlar(),
            const Tolov_usuli(),
          const  SizedBox(height: 160)
          ],
        ),
      ),
    );
  }
}

