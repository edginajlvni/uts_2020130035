import 'package:flutter/material.dart';
import 'package:uts_2020130035/HomeScreen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 1),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },

                  child: Icon(
                    Icons.arrow_back_ios_new
                  ),
                ),))
              ],
            ),
          ),
        ),
      )
    );
  }
}