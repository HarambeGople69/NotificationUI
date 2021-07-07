import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: ScreenUtil().setSp(15),
                color: Color(0xff0DC28B),
              ),
            ),
            Expanded(
              child: Container(
                height: ScreenUtil().setSp(15),
                color: Color(0xffF6465D),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "10",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(40),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      color: Color(0xff0D262A),
                      child: Text(
                        "792.85",
                        style: TextStyle(
                          color: Color(0xff0DC28B),
                          fontSize: ScreenUtil().setSp(40),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xff261122),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "796.50",
                        style: TextStyle(
                          color: Color(0xffF6465D),
                          fontSize: ScreenUtil().setSp(40),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "25",
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(40),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
