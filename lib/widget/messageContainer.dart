import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';

class MessageContainer extends StatelessWidget {
  final String title;
  final String message;
  const MessageContainer({Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setSp(35),
        vertical: ScreenUtil().setSp(55),
      ),
      // height: ScreenUtil().setHeight(500),
      decoration: BoxDecoration(
        color: Color(0xff161C2C),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            ScreenUtil().setSp(60),
          ),
          bottomLeft: Radius.circular(
            ScreenUtil().setSp(60),
          ),
          bottomRight: Radius.circular(
            ScreenUtil().setSp(60),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: bigWhite,
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            message,
            style: paratext,
          ),
        ],
      ),
    );
  }
}
