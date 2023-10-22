import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 202, 139, 139),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(right: 20, left: 15, top: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(right: 25, left: 15, top: 30),
              child: Column(
                children: [
                  Text(
                    "Our Product",
                    style: TextStyle(
                      fontFamily: "kaisei",
                      fontSize: 30,
                      color: const Color.fromARGB(255, 12, 12, 12),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
