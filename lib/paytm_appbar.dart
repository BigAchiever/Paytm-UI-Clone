import 'package:flutter/material.dart';

class PaytmAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xffa0e0fe),
            shadowColor: Color(0xff92deff),
            foregroundColor: Color(0xffb1e7ff),
            centerTitle: true,
            title: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/paytmlogo.png"),
                ),
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                margin: EdgeInsets.only(left: 25),
                child: Image.asset("assets/images/user.png"),
              ),
            ),
            leadingWidth: 60,
            actions: [
              Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: AssetImage(
                      "assets/images/search.png",
                    )),
                  )),
              Container(
                margin: EdgeInsets.only(right: 25),
                height: 24,
                width: 24,
                child: Image.asset("assets/images/message.png"),
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 160),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 200,
                width: MediaQuery.of(context).size.width / 13,
                decoration: BoxDecoration(
                    color: Color(0xff7f817f),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(65.0);
}
