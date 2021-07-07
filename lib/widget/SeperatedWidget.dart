import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class SeperatedWidget extends StatelessWidget {
  final String? title;
  final Widget? tile;
  const SeperatedWidget({Key? key, this.title, this.tile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title!,
                style: bigWhite,
              ),
              Spacer(),
              tile!,
            ],
          ),
        ),
        Divider(
          color: Color(0xff1E2130),
          thickness: 1,
        ),
      ],
    );
  }
}
