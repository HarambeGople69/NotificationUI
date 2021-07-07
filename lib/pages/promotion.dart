import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/models/detailModel.dart';
import 'package:myapp/widget/dash.dart';
import 'package:myapp/widget/messageContainer.dart';
import 'package:myapp/widget/messageRow.dart';

class Promotion extends StatefulWidget {
  final String title;

  final String imageName;
  const Promotion({Key? key, required this.title, required this.imageName})
      : super(key: key);

  @override
  _PromotionState createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: AppStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(15),
            vertical: ScreenUtil().setSp(20),
          ),
          child: Column(
            children: [
              messageRow(
                topic: "Refer a friend",
                desc: "Refer a friend and trade together",
                image: widget.imageName,
              ),
              Center(
                child: Text(
                  "Fri",
                  style: paratext,
                ),
              ),
              messageRow(
                topic: "Refer a friend",
                desc: "Refer a friend and trade together",
                image: widget.imageName,
              ),
              Center(
                child: Text(
                  "Sat",
                  style: paratext,
                ),
              ),
              messageRow(
                topic: "Refer a friend",
                desc: "Refer a friend and trade together",
                image: widget.imageName,
              ),
              Center(
                child: Text(
                  "Sun",
                  style: paratext,
                ),
              ),
              messageRow(
                topic: "Refer a friend",
                desc: "Refer a friend and trade together",
                image: widget.imageName,
              ),
              Center(
                child: Text(
                  "Mon",
                  style: paratext,
                ),
              ),
              messageRow(
                topic: "Refer a friend",
                desc: "Refer a friend and trade together",
                image: widget.imageName,
              ),
              Center(
                child: Text(
                  "Tue",
                  style: paratext,
                ),
              ),
              messageRow(
                topic: "Refer a friend",
                desc: "Refer a friend and trade together",
                image: widget.imageName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
