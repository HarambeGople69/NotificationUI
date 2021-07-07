import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/models/detailModel.dart';
import 'package:myapp/pages/buyselldetail.dart';
import 'package:myapp/widget/SeperatedWidget.dart';
import 'package:myapp/widget/detailWidget.dart';

import '../constants.dart';
import 'bar.dart';

class BuyOrder extends StatefulWidget {
  final Color? color;
  final String? title;
  const BuyOrder({Key? key, this.color, this.title}) : super(key: key);

  @override
  _BuyOrderState createState() => _BuyOrderState();
}

class _BuyOrderState extends State<BuyOrder> {
  DetailModel detailModel = DetailModel(
      "Individual",
      "20",
      "20",
      "900",
      "28 Feb 2020",
      "14:56:12",
      "LIMIT",
      "900",
      "Day",
      "28 Feb 2020",
      "14:56:12",
      "810");
  int currentIndex = 2;
  // ignore: non_constant_identifier_names
  Widget show_page = Text("Cancel Order");

  Widget check_postion(int index) {
    switch (index) {
      case 0:
        return Text("Cancel Order");

      case 1:
        return Text("Modify Order");

      case 2:
        return Column(
          children: [
            BuySellDetail(
              details: detailModel,
            ),
            BottomBar()
            // Text("Here is the container"),
            // SizedBox(height: 40)
          ],
        );

      default:
        return Container();
    }
  }

  @override
  void initState() {
    super.initState();
    show_page = check_postion(currentIndex);
  }

  bool _value = false;
  ScrollController _scrollController = ScrollController();
  var top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // controller: _scrollController,
        slivers: [
          SliverAppBar(

              // automaticallyImplyLeading: false,
              backgroundColor: widget.color,
              expandedHeight: ScreenUtil().setSp(540),
              pinned: true,

              // title: Text("/My App bar"),
              flexibleSpace: LayoutBuilder(builder: (context, constraints) {
                top = constraints.biggest.height;
                return FlexibleSpaceBar(
                  centerTitle: true,
                  background: Container(
                      padding: EdgeInsets.only(
                        top: ScreenUtil().setSp(40),
                        left: ScreenUtil().setSp(40),
                      ),
                      color: widget.color,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff411429),
                            radius: ScreenUtil().setSp(100),
                          ),
                          SizedBox(
                            width: ScreenUtil().setSp(30),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${widget.title} NIFRA",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(90),
                                ),
                              ),
                              SizedBox(
                                height: ScreenUtil().setSp(30),
                              ),
                              Text(
                                "National insurance",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(60),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedOpacity(
                        opacity: top <= 110.0 ? 1 : 0,
                        duration: Duration(milliseconds: 300),
                        child: Text("Buy NIFRA"),
                      )
                    ],
                  ),
                );
              })),
          SliverToBoxAdapter(
            child: show_page,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Color(0xff575A69)),
          unselectedLabelStyle: TextStyle(color: Color(0xff575A69)),

          // onTap: (value) {
          //   setState(() {
          //     currentIndex = value;
          //     show_page = check_postion(currentIndex);
          //   });
          // },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Cancel Order",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Modify Order"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Quotes"),
          ]),
    );
  }
}
