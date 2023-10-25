import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_2020130035/HomeScreen.dart';
import 'package:uts_2020130035/cart/itemcart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 219, 187, 255),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(right: 25, left: 20, top: 10),
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
                    ),
                    SizedBox(height: 20),
                    ItemCart(),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
