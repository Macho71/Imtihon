import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import '../appBannerList.dart';
import '../cart.dart';

class Buyurtmalar extends StatelessWidget {
  const Buyurtmalar({
    Key? key,
    required int itemcount,
  })  : _itemcount = itemcount,
        super(key: key);

  final int _itemcount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade100,
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.8),
                blurRadius: 4,
                spreadRadius: 1,
                offset: const Offset(-1, -1)),
            const BoxShadow(
                color:Color.fromARGB(255, 233, 151, 44),
                blurRadius: 4,
                spreadRadius: 3,
                offset: Offset(1, 1))
          ]),
      height: 160 * _itemcount.toDouble(),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            height: 160 * _itemcount.toDouble(),
            child: ListView.builder(
                itemCount: _itemcount,
                itemBuilder: ((context, index) {
                  return SizedBox(
                    height: 140,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: NetworkImage(
                                    appBannerList[index].thumbnaiUel),
                                fit: BoxFit.cover,
                              )),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Ushbu joyda sotiladigan mahsulot haqida malumotlar yoziladi ",
                                  style: GoogleFonts.getFont('Lato',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Modeli uchun joy",
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        color: Colors.orange,
                                        letterSpacing: .5,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Miqdor(
                                  TText: "                                   ",
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }))),
      ),
    );
  }
}
