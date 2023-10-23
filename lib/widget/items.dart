import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(25),
      crossAxisCount: 2,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(8),
          child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.home,),
                      Text("Home",)
                  ],
                ),
              )),
        )
      ],
    );
  }
}
