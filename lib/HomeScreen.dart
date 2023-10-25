import 'package:flutter/material.dart';
import 'package:uts_2020130035/CartScreen.dart';
import 'package:uts_2020130035/ProductScreen.dart';
import 'package:uts_2020130035/widget/griditems.dart';
import 'package:uts_2020130035/widget/items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 255, 214, 245),
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
                      color: const Color.fromARGB(255, 0, 0, 0),
                      size: 25,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: const Color.fromARGB(255, 0, 0, 0),
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
                      fontSize: 25,
                      color: const Color.fromARGB(255, 12, 12, 12),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Items(),
            Container(
              padding: EdgeInsets.all(16),
              child: InkWell(
                onTap: () {
                          Navigator.pop(context);
                        },
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CartScreen()));
                          },
                child: Icon(
                  Icons.trolley,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  size: 25,
                ),
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
