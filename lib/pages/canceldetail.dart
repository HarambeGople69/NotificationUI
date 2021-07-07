import 'package:flutter/material.dart';
import 'package:myapp/models/CancelModel.dart';
import 'package:myapp/models/detailModel.dart';
import 'package:myapp/widget/SeperatedWidget.dart';

import '../constants.dart';

class CancelDetail extends StatelessWidget {
  final CancelModel? details;

  const CancelDetail({Key? key, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SeperatedWidget(
              title: "Amount",
              tile: Expanded(child: Text(details!.account, style: bigWhite)),
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
              title: "Order Type",
              tile: Text(details!.OrderType, style: bigWhite),
            ),
            SeperatedWidget(
              title: "Limit Price",
              tile: Text(details!.limitPrice, style: bigWhite),
            ),
            SeperatedWidget(
              title: "Time-in-force",
              tile: Expanded(
                  child: ListTile(
                title: Text(details!.timeInForce, style: bigWhite),
                subtitle: Text(
                  details!.timeInForceLocation,
                  style: paratext,
                ),
              )),
            ),
            SeperatedWidget(
              title: "Order Placed",
              tile: Expanded(
                  child: ListTile(
                title: Text(details!.OrderPlaced, style: bigWhite),
                subtitle: Text(
                  details!.OrderPlaceddate,
                  style: paratext,
                ),
              )),
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
