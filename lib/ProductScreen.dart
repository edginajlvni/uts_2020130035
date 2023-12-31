import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_2020130035/CartScreen.dart';
import 'package:uts_2020130035/HomeScreen.dart';

class ProductScreen extends StatelessWidget {
  String names;
  ProductScreen(this.names);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(108, 219, 187, 255),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                        child: Image.asset(
                      'assets/images/$names.png',
                      width: MediaQuery.of(context).size.width / 1.2,
                    )),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5, left: 30, right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (names),
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'dmsans',
                                letterSpacing: 3),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Harga(),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5, left: 30, right: 40),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              'Deskripsi Produk:',
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'dmsans'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5, left: 30, right: 40),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              'Ukuran fit to XL dengan lingkar dada 110 cm',
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'dmsans'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.2),
                                ),
                                //borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 10,
                                  ),
                                  SizedBox(width: 15),
                                  Text("01"),
                                  SizedBox(width: 15),
                                  Icon(
                                    CupertinoIcons.plus,
                                    size: 10,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CartScreen()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 5, 24, 196),
                                    ),
                                    child: Text(
                                      "Add to Cart",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}

class Harga extends StatelessWidget {
  const Harga({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5, left: 30, right: 40),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            Text(
              'Harga = Rp. 90.000',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'dmsans',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
