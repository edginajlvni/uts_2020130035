import 'package:flutter/cupertino.dart';

class CartName extends StatelessWidget {
  String
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width / 1.8,
              child: Padding(
                padding: EdgeInsets.only(left: 15, top: 20, bottom: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(names)],
                ),
              ),
            );
  }
}