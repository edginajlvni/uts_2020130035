import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatelessWidget {
  var pnames = [
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
        padding: EdgeInsets.only(top: 0, left: 10, right: 5),
        child: Column(
          children: [
            for (int i = 0; i < 4; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 192, 242),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Row(children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width / 4,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 162, 250),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset("assets/images/${pnames[i]}.png"),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.8,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 20, bottom: 25),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pnames[i],
                              style: TextStyle(
                                fontFamily: 'averia',
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  harga[i],
                                  style: TextStyle(
                                    fontFamily: 'averia',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "x 1",
                                  style: TextStyle(
                                    fontFamily: 'averia',
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "= Rp. 90.000",
                                  style: TextStyle(
                                    fontFamily: 'averia',
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  )
                ]),
              ),
          ],
        ),
      ),
    );
  }
}
