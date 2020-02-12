import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xff181818),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: BottomNavigationBar(
          backgroundColor: Color(0xff292929),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("Tasks")),
            BottomNavigationBarItem(icon: Icon(Icons.layers), title: Text("Projects")),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 8, right: 8, top: 120.0),
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                              right: 6.0
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xff222222)
                                )
                              )
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                                SizedBox(width: 10.0,),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Create something that is worth your time and efforts.',
                                        maxLines: 1,
                                        softWrap: false,
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                      SizedBox(height: 4.0,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 12,
                                            height: 12,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(10)
                                            ),
                                          ),
                                          SizedBox(width: 6.0,),
                                          Text('BL0001',
                                            style: TextStyle(
                                              color: Colors.white.withOpacity(0.8),
                                              fontSize: 12.0
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 24.0,),
                                Text('Feb 07', style: TextStyle(fontSize: 10, color: Colors.white.withOpacity(0.6)),),
                                SizedBox(width: 8.0,),
                                Icon(Icons.chevron_right, color: Color(0xff222222),)
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 60,
                  ),
                )
              ],
            ),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  height: 120.0,
                  color: Color(0xff181818).withOpacity(0.98),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 16,
                          bottom: 8
                        ),
                        child: Row(
                          children: <Widget>[
                            Text('Hi, Darrell',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff2f2f2)
                                  ),
                            ),
                            Expanded(flex: 1, child: Container(),),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},),
                                CircleAvatar()
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Tasks for today', style: TextStyle(color: Color(0xfff2f2f2).withOpacity(0.6)),),
                            Text('Feb 12', style: TextStyle(color: Color(0xfff2f2f2).withOpacity(0.6)),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}