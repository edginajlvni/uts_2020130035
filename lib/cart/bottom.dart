import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rp. 360.000",
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.minus),
                  label: Text(
                    "Check Out",
                  ))
            ],
          )),
    );
  }
}
