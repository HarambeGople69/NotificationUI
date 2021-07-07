import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/pages/buyorder.dart';
import 'package:myapp/pages/cancel.dart';
import 'package:myapp/widget/messageRow.dart';

class OrderAssistant extends StatefulWidget {
  final String? title;
  final String? imageName;
  const OrderAssistant({Key? key, this.title, this.imageName})
      : super(key: key);

  @override
  _OrderAssistantState createState() => _OrderAssistantState();
}

class _OrderAssistantState extends State<OrderAssistant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!,style: AppStyle,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BuyOrder(
                    color: Color(0xff0DC28B),
                    title: "Buy",
                  );
                }));
              },
              child: messageRow(
                topic: "Order Filled",
                image: widget.imageName,
                desc: "Your limit order to buy 10 NLIC @1100 has been filled",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BuyOrder(
                    color: Color(0xffF6465D),
                    title: "Sell",
                  );
                }));
              },
              child: messageRow(
                topic: "Order Filled Notice",
                image: widget.imageName,
                desc: "Your limit order to buy 10 NLIC has been filled at 1100",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Cancel(
                    color: Color(0xff0DC28B),
                    title: "Buy",
                  );
                }));
              },
              child: messageRow(
                topic: "Order Filled Cancelled",
                image: widget.imageName,
                desc:
                    "Your limit order to buy 10 NLIC @1100 has been cancelled",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
