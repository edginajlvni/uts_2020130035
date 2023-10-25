import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatelessWidget {
  List names = [
    'Jaket Boomber',
    'Sweater',
    'Jaket Denim',
    'Jaket Kulit',
  ];

  var harga = [
    'Rp. 90.000',
    'Rp. 90.000',
    'Rp. 90.000',
    'Rp. 90.000',
  ];

  var qt = [
    '2',
    '3',
    '1',
    '1',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 0, left: 10, right: 10),
        child: Column(
          children: [
            for (int i = 0; i < 4; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 230, 250),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Row(children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width / 4,
                    margin: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 211, 254),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.asset("assets/images/${names[i]}.png"),
                  )
                ]),
              ),
            
          ],
        ),
      ),
    );
  }
}
