
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages


// ignore: must_be_immutable
class  Miqdor extends StatefulWidget {
   Miqdor({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.TText
  }) : super(key: key);
  // ignore: non_constant_identifier_names
  String TText;

  @override
  State<Miqdor> createState() => _MiqdorState();
}
class _MiqdorState extends State<Miqdor> {
  // ignore: non_constant_identifier_names
  int _product_num = 0;
  // ignore: non_constant_identifier_names
  void Product_min() {
    setState(() {
       if(_product_num>0){
        _product_num = _product_num - 1;
      }
    });
  }
  // ignore: non_constant_identifier_names
  void Product_max() {
    setState(() {
      _product_num = _product_num + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.TText,
          style: GoogleFonts.getFont('Lato',
              fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 26,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.grey.shade400),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Product_min();
                    },
                    child: Container(
                      
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade200),
                          child: const Center(child: Text("-"))
                    ),
                  ),
                  Text(_product_num.toString()),
                  InkWell(
                    onTap: () {
                      Product_max();
                    },
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade200),
                      child: const Center(
                        child: Text("+"),
                      ),
                    ),
                  )
                ]),
          ),
        )
      ],
    );
  }
}
