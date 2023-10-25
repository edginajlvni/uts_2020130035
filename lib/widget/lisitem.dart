// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:uts_2020130035/ProductScreen.dart';

// class ListItem extends StatelessWidget {
//   var names = [
//     "Jaket Boomber",
//     "Hoodie Cokelat",
//     "Jaket Kulit",
//     "Sweater",
//     "Jaket Denim",
//     "Jaket Varsity Hijau",
//   ];

//   var harga = [
//     "Rp. 90.000",
//     "Rp. 190.000",
//     "Rp. 250.000",
//     "Rp. 80.000",
//     "Rp. 128.000",
//     "Rp. 118.000",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: names.length,
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           childAspectRatio: 0.7, crossAxisCount: 2),
//       itemBuilder: (context, index) {
//         return InkWell(
//             onTap: () {
//              Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => ProductScreen()));
//                     },
//             child: Container(
//               margin: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Color.fromARGB(255, 255, 215, 252),
//                         blurRadius: 1,
//                         spreadRadius: 2)
//                   ]),
//               child: Padding(
//                 padding: EdgeInsets.all(12),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "",
//                           style: TextStyle(fontSize: 12),
//                         ),
//                         Icon((Icons.favorite))
//                       ],
//                     ),
//                     SizedBox(height: 1),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Image.asset("assets/images/${names[index]}.png",
//                           height: 100, width: 100),
//                     ),
//                     SizedBox(height: 20),
//                     Padding(
//                       padding: EdgeInsets.all(8),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             names[index],
//                             style:
//                                 TextStyle(fontFamily: 'helmet', fontSize: 15),
//                           ),
//                           SizedBox(height: 1),
//                           Row(
//                             children: [
//                               Text(harga [index],style: TextStyle(
//                                 fontFamily: 'helmet'
//                               ),                              )
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),

//                 //   child: Image.asset(
//                 //     "assets/images/${names[index]}.png",
//                 //     height: 80,
//                 //     width: 80,
//                 //   ),
//                 // ),
//               ),
//             ));
//       },
//     );
//   }
// }
