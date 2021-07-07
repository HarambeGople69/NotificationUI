import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/models/notifyModel.dart';
import 'package:myapp/pages/promotion.dart';
import 'package:myapp/widget/dash.dart';

import 'ordersAssistant.dart';

class Notifys extends StatefulWidget {
  const Notifys({Key? key}) : super(key: key);

  @override
  _NotifysState createState() => _NotifysState();
}

class _NotifysState extends State<Notifys> {
  List<NotifyModel> notifyModel = [
    NotifyModel("Sanduk", "4d ago", "Dear Client, a debate", "assets/1.jpeg"),
    NotifyModel("Sanduk Promotion", "2d ago",
        "Check out the latest deposit tier promotion", "assets/2.jpg"),
    NotifyModel("Orders Assistant", "6/4/2021",
        "Your order to sell 100 shares of ADBL", "assets/3.jpg"),
    NotifyModel("Price Alerts", "6/4/2021",
        "Hi there, find all price alerts recordes here..", "assets/4.jpg"),
    NotifyModel("My Feedback", "6/4/2021",
        "Hi there, describe your problem and sugges", "assets/5.png"),
    NotifyModel("IPO News", "6/4/2021",
        "Hi there, check out the latest IPO offers", "assets/6.jpg"),
    NotifyModel("Account Manager", "6/4/2021", "Wednesday", "assets/1.jpeg"),
    NotifyModel("Orders Assistant", "6/4/2021", "May,29", "assets/2.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: AppStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 3,
                  );
                },
                itemCount: notifyModel.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setSp(30),
                    ),
                    child: ListTile(
                      onTap: () {
                        if (index == 2) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return OrderAssistant(
                              title: notifyModel[index].title,
                              imageName: notifyModel[index].imageName,
                            );
                          }));
                        } else {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Promotion(
                              title: notifyModel[index].title,
                              imageName: notifyModel[index].imageName,
                            );
                          }));
                        }
                      },
                      leading: CircleAvatar(
                        radius: ScreenUtil().setSp(80),
                        backgroundImage: AssetImage(
                          notifyModel[index].imageName,
                        ),
                      ),
                      title: Text(
                        notifyModel[index].title,
                        style: bigWhite,
                      ),
                      subtitle: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: ScreenUtil().setSp(20)),
                        child: Text(
                          notifyModel[index].desc,
                          style: paratext,
                        ),
                      ),
                      trailing: Text(
                        notifyModel[index].time,
                        style: paratext,
                      ),
                    ),
                  );
                }),
          ),
          Dash(),
        ],
      ),
    );
  }
}
