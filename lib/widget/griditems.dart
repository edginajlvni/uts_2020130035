// import 'package:flutter/material.dart';
// import 'package:uts_2020130035/ProductScreen.dart';

// class GridItems extends StatelessWidget {
//   List Names = [
//     "Jaket Boomber",
//     "Hoodie Cokelat",
//     "Jaket Bulu-Bulu",
//     "Kardigan Kupu-Kupu",
//     "Jaket Denim",
//     "Jaket Varsity Hijau",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: Names.length,
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         childAspectRatio: 0.7,
//         crossAxisCount: 2,
//       ),
//       itemBuilder: (context, index) {
//         return InkWell(
//           onTap: () {},
//           child: MaterialButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>  ProductScreen()));
//                   },
//           child: Container(
//               margin: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Color.fromARGB(255, 187, 224, 255),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 4,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(12),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Image.asset('assets/images/${Names[index]}.png',
//                       height: 100,
//                       width: 100,),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(8),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             Names[index],
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontFamily: 'helmet',
//                             ),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Row(
//                             children: [
//                               Text('Rp. 100.000',
//                                   style: TextStyle(
//                                     fontSize: 10,
//                                   ))
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               )),
//          ) );
//       },
//     );
//   }
// }
