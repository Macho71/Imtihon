import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
// ignore: camel_case_types
class Tolov_usuli extends StatelessWidget {
  const Tolov_usuli({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("To'lov usuli:",
              style: GoogleFonts.getFont('Lato',
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 10,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade100,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset:const Offset(-1, -1)),
                    const BoxShadow(
                        color: Color.fromARGB(255, 50, 182, 239),
                        blurRadius: 4,
                        spreadRadius: 3,
                        offset: Offset(1, 1))
                  ]),
           
              child: ExpansionTile(
                
                leading: const Icon(Icons.attach_money_outlined),
                title: Text("To'lov usuli",style: GoogleFonts.getFont('Lato',
                  fontWeight: FontWeight.w600)),
              subtitle: const Text("Naqd"),
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    height: 40,
                    color: Colors.amber,
                    child: const Text("Naqd:")),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 120,
                    color: Colors.amber,
                    child: const Text("Karta orqali:")),
                ),
               
              ],
              ),
              ),
        ],
      ),
    );
  }
}
