import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'messageContainer.dart';

class messageRow extends StatelessWidget {
  final String? topic;
  final String? desc;
  final String? image;
  const messageRow({Key? key, this.topic, this.desc, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: ScreenUtil().setSp(80),
            backgroundImage: AssetImage(image!),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(30),
          ),
          Expanded(
            child: MessageContainer(
              title: topic!,
              message: desc!,
            ),
          ),
        ],
      ),
    );
  }
}
