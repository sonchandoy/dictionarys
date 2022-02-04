// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class CategoryList extends StatefulWidget {
//   const CategoryList({Key? key}) : super(key: key);

//   @override
//   _CategoryListState createState() => _CategoryListState();
// }

// class _CategoryListState extends State<CategoryList> {
//   List<String> category = [
//     'Abandance',
//     'Abandon',
//     'Abandon Diverst',
//     'Abandoned Property',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView.builder(
//         itemCount: category.length,
//         itemBuilder: (context, index) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Text(
//                   category[index],
//                   style: const TextStyle(
//                     fontSize: 16.0,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(left: 20),
//                 height: 1.0,
//                 color: Colors.grey,
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
