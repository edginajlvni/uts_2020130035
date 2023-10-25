import 'package:flutter/material.dart';
import 'package:uts_2020130035/HomeScreen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),

      body: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(right: 25, left: 15, top: 30),
              child: Column(
                children: [
                  Text(
                    "Cart",
                    style: TextStyle(
                      fontFamily: "kaisei",
                      fontSize: 25,
                      color: const Color.fromARGB(255, 12, 12, 12),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
