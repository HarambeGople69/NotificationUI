import 'package:flutter/material.dart';
import 'package:myapp/models/detailModel.dart';
import 'package:myapp/widget/SeperatedWidget.dart';

import '../constants.dart';

class BuySellDetail extends StatelessWidget {
  final DetailModel? details;

  const BuySellDetail({Key? key, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SeperatedWidget(
              title: "Amount",
              tile: Text(details!.account, style: bigWhite),
            ),
            SeperatedWidget(
              title: "Total Quantity",
              tile: Text(details!.totalQuan, style: bigWhite),
            ),
            SeperatedWidget(
              title: "Filled Quantity",
              tile: Text(details!.FilledQuan, style: bigWhite),
            ),
            SeperatedWidget(
              title: "Order Filled",
              tile: Expanded(
                child: ListTile(
                  title: Text(details!.OrderFill),
                  subtitle: Text(details!.OrderFilldate),
                ),
              ),
            ),
            SeperatedWidget(
              title: "Order Type",
              tile: Text(details!.OrderType, style: bigWhite),
            ),
            SeperatedWidget(
              title: "Limit Price",
              tile: Text(details!.limitPrice, style: bigWhite),
            ),
            SeperatedWidget(
              title: "Time-in-force",
              tile: Text(details!.timeInForce, style: bigWhite),
            ),
            SeperatedWidget(
              title: "Order Placed",
              tile: Text(details!.OrderPlaced, style: bigWhite),
            ),
            SeperatedWidget(
              title: "Last Price",
              tile: Text(details!.lastPrice,
                  style: bigWhite.copyWith(
                    color: Color(0xff0DC28B),
)),
            ),
          ],
        ));
  }
}
