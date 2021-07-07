// import 'package:flutter/material.dart';
// import 'package:myapp/models/detailModel.dart';

// class DetailWidget extends StatelessWidget {
//   final DetailModel? details;
//   const DetailWidget({Key? key, this.details}) : super(key: key);

//   SeperatedWidget(String first, Widget second) {
//     return Row(
//       children: [Text(first), second],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SeperatedWidget(
//           "Accounts",
//           Text(details!.account),
//         ),
//         SeperatedWidget(
//           "Total Quantity",
//           Text(details!.totalQuan),
//         ),
//         SeperatedWidget(
//           "Filled Quantity",
//           Text(details!.FilledQuan),
//         ),
//         SeperatedWidget(
//           "Avg Price",
//           Text(details!.AvgPrice),
//         ),
//         SeperatedWidget(
//           "Order Filled",
//           ListTile(
//             title: Text(
//               details!.OrderFill,
//             ),
//             subtitle: Text(details!.OrderFilldate),
//           ),
//         ),
//         SeperatedWidget(
//           "Order Type",
//           Text(details!.OrderType),
//         ),
//         SeperatedWidget(
//           "Limit Price",
//           Text(details!.limitPrice),
//         ),
//         SeperatedWidget(
//           "Time-in-force",
//           Text(details!.timeInForce),
//         ),
//         SeperatedWidget(
//           "Order Placed",
//           ListTile(
//             title: Text(
//               details!.OrderPlaced,
//             ),
//             subtitle: Text(details!.OrderPlaceddate),
//           ),
//         ),
//         SeperatedWidget(
//           "Last Price",
//           Text(details!.lastPrice),
//         ),
//       ],
//     );
//   }
// }
