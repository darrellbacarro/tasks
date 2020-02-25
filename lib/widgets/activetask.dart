import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
      height: 100.0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned.fill(
            top: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Color(0xffF3BD6C).withOpacity(0.5),
                borderRadius: BorderRadius.circular(9)
              ),
              height: 90.0,
            ),
          ),
          Positioned.fill(
            top: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                color: Color(0xffF3BD6C).withOpacity(0.5),
                borderRadius: BorderRadius.circular(9)
              ),
              height: 90.0,
            ),
          ),
          Stack(
            children: [
              Material(
                color: Color(0xffF3BD6C),
                borderRadius: BorderRadius.circular(9),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9)
                    ),
                    height: 90.0,
                    padding: const EdgeInsets.only(left: 8.0, right: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset('assets/images/coding.svg',
                          height: 60,
                        ),
                        SizedBox(width: 8,),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('BL0001', style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12.0
                              ),),
                              Text('Create something unique and amazing',
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text('IN PROGRESS', style: TextStyle(
                                color: Color(0xffA35800),
                                fontWeight: FontWeight.w700
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('00:00',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 32
                              ),
                            ),
                            SizedBox(height: 32,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 26,
                bottom: 14.0,
                child: Row(
                  children: <Widget>[
                    Material(
                      elevation: 2.0,
                      color: Color(0xffF5C782),
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(7),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2
                          ),
                          child: Icon(Icons.pause, color: Colors.black54,),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Material(
                      elevation: 2.0,
                      color: Colors.green,
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(7),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2
                          ),
                          child: Icon(Icons.check, color: Colors.white,),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]
          )
        ],
      ),
    );
  }
}