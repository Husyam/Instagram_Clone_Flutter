// import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hometask_instagram/main.dart';
import 'package:hometask_instagram/tes.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: Colors.white,
        // title: Text(
        //   "Instagram",
        //   style: TextStyle(
        //     fontFamily: "instagram",
        //     color: Colors.black,
        //     fontSize: 30,
        //   ),
        // ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Instagram_Logo_Large.png",
              height: 145,
              width: 165,
            ),

            // Text(
            //   'data',
            //   style: TextStyle(color: Colors.black),
            //   // textAlign: Alignment.center,
            // )
          ],
        ),
        actions: <Widget>[
          Icon(
            Icons.live_tv_rounded,
            color: Colors.orange[700],
            size: 30,
          ),
          SizedBox(
            width: 8,
          ),
          // Icon(
          //   Icons.send,
          //   color: Colors.pink[600],
          //   size: 30,
          // ),
          Transform.rotate(
            angle: 180 * pi / 580,
            child: IconButton(
              icon: Icon(
                Icons.details,
                color: Colors.pink,
                size: 30,
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (int index) {
                      return Container(
                        width: 55,
                        height: 55,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            scale: 1.0,
                            image: AssetImage(
                              "assets/images/1.jpeg",
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Divider(
                height: 2,
              )
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                5,
                (int index) {
                  return Column(
                    children: <Widget>[
                      // ListTile(
                      //   leading: CircleAvatar(
                      //     backgroundImage:
                      //         AssetImage("assets/images/kue_lapis_tigo.jpg"),
                      //   ),
                      //   title: Text(
                      //     "Instagramer Users",
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // ),

                      SizedBox(
                        height: Size.fromHeight(20).height,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 380,
                            width: 390,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[200]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  height: Size.fromHeight(1).height,
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          radius: 23.0,
                                          backgroundImage: AssetImage(
                                              "assets/images/1.jpeg"),
                                        ),
                                        title: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => akun(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Mr.Rafi",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                    ),
                                    Icon(
                                      Icons.list,
                                      size: 28.0,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    )
                                  ],
                                ),
                                Image.asset(
                                  "assets/images/4.jpeg",
                                  // height: 330,
                                  width: 360,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 33.0,
                                      ),
                                    ),
                                    Text(
                                      "1.244",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.messenger_outline,
                                      size: 28.0,
                                    ),
                                    SizedBox(
                                      width: Size.fromWidth(5).width,
                                    ),
                                    Text(
                                      "562",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: Size.fromWidth(167).width,
                                    ),
                                    Icon(
                                      Icons.bookmark_border,
                                      size: 30.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Size.fromHeight(20).height,
                      )
                      // Container(
                      //   height: 340,
                      //   width: 390,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //       color: Colors.blueGrey[200]),
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: <Widget>[
                      //       Image.asset(
                      //         "assets/images/4.jpeg",
                      //         height: 330,
                      //         width: 300,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Container(
                      //   width: 450,
                      //   child: Text('data'),
                      // ),
                    ],
                  );
                },
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Container(
          //       height: 300,
          //       width: 300,
          //       // color: Colors.red,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10.0),
          //           color: Colors.blueGrey[200]),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: <Widget>[
          //           Image.asset(
          //             "assets/images/ketupat_sayur.jpg",
          //             height: 200,
          //             width: 200,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/kue_lapis_tigo.jpg",
                ),
              ),
              title: Text(""),
            ),
          ]),
    );
  }
}
