import 'package:flutter/material.dart';
import 'package:qr_code_scanner/triangulardesign.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffF3FBFE),
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 45,
                                width: MediaQuery.of(context).size.width / 45,
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 45,
                                width: MediaQuery.of(context).size.width / 45,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 45,
                                width: MediaQuery.of(context).size.width / 45,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 12.5,
                              width: MediaQuery.of(context).size.width / 5.8,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/user.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello! 👋",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Danish Ali Siddiqui",
                                  style: TextStyle(
                                      color: Color(0xff65696C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: Color(0xffffffff),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width / 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 55,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 55,
                                child: Visibility(
                                  visible: _selectedIndex == 0,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 25,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 9.5,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.orange.shade100, width: 8),
                                ),
                                child: Text(
                                  "T",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 45,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 55,
                                child: Visibility(
                                  visible: _selectedIndex == 1,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffa59df9),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 25,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 9.5,
                                decoration: BoxDecoration(
                                  color: Color(0xff027eff),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Color(0xffe5e6fc), width: 8),
                                ),
                                child: Text(
                                  "C",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 45,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 55,
                                child: Visibility(
                                  visible: _selectedIndex == 2,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffb899fc),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 25,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 9.5,
                                decoration: BoxDecoration(
                                  color: Color(0xff8c54f7),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Color(0xffece5fe), width: 8),
                                ),
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 45,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 55,
                                child: Visibility(
                                  visible: _selectedIndex == 3,
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xff2bca97),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 25,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 9.5,
                                decoration: BoxDecoration(
                                  color: Color(0xff2bca97),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Color(0xffd7fcf1), width: 8),
                                ),
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 18),
                                child: Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.width / 8.5,
                                  decoration: BoxDecoration(
                                    color: Color(0xff037cff),
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Color(0xffd4defa), width: 8),
                                  ),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 25),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(),
                            flex: 1,
                          ),
                          Column(
                            children: [
                              Divider(
                                thickness: 2,
                                color: Color(0xfff6f7f6),
                                indent: 10,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                18),
                                    child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                20,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                9.5,
                                        decoration: BoxDecoration(
                                          color: Color(0xffd4defa),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: IconButton(
                                          icon: Icon(Icons.settings_outlined),
                                          alignment: Alignment.center,
                                          color: Color(0xff7d5aca),
                                          onPressed: () {},
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                18),
                                    child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                20,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                9.5,
                                        decoration: BoxDecoration(
                                          color: Color(0xffd4defa),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: IconButton(
                                          icon: Icon(Icons.logout_outlined),
                                          alignment: Alignment.center,
                                          color: Color(0xff7d5aca),
                                          onPressed: () {},
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 30,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Color(0xfff6f7f6),
                      thickness: 2,
                    ),
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          InkWell(
                            onTap: () {
                              _onItemTapped(0);
                            },
                            splashColor: Colors.orange[400],
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height / 22,
                              width: MediaQuery.of(context).size.width / 2.4,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: _selectedIndex == 0
                                          ? Colors.orange[100]
                                          : Colors.transparent,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12.0,
                                      ),
                                      child: Text(
                                        "The Liquer Shop..",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 38,
                          ),
                          InkWell(
                            onTap: () {
                              _onItemTapped(1);
                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height / 22,
                              width: MediaQuery.of(context).size.width / 2.4,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: _selectedIndex == 1
                                          ? Color(0xffeaecfc)
                                          : Colors.transparent,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12.0,
                                      ),
                                      child: Text(
                                        "The Liquer Shop..",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Color(0xff9e98ea)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 38,
                          ),
                          InkWell(
                            onTap: () {
                              _onItemTapped(2);
                            },
                            splashColor: Colors.orange[400],
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height / 22,
                              width: MediaQuery.of(context).size.width / 2.4,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: _selectedIndex == 2
                                          ? Color(0xffebe4fc)
                                          : Colors.transparent,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12.0,
                                      ),
                                      child: Text(
                                        "The Liquer Shop..",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Color(0xffae97ec)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 35,
                          ),
                          InkWell(
                            onTap: () {
                              _onItemTapped(3);
                            },
                            splashColor: Colors.orange[400],
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height / 22,
                              width: MediaQuery.of(context).size.width / 2.4,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: _selectedIndex == 3
                                          ? Color(0xffd7fbef)
                                          : Colors.transparent,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12.0,
                                      ),
                                      child: Text(
                                        "The Liquer Shop..",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 65, 180, 141)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
