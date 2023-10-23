import 'package:flutter/material.dart';

import '../data/jacket.dart';

class JacketPage extends StatelessWidget {
  const JacketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(right: 15),
            width: 10,
            height: 10,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisExtent: 15,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return _buildCard(listJacket[index], context);
              },
              itemCount: listJacket.length,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Jacket jacket, context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
              ),
              Hero(
                tag: jacket.imageUrl,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(jacket.imageUrl),
                        fit: BoxFit.contain,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Rp. ${jacket.price}',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'play',
                  fontSize: 12,
                ),
              ),
              Text(
                jacket.name,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'play',
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  color: Colors.brown,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
