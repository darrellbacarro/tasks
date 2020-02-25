import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tasks/widgets/activetask.dart';

class Header extends StatelessWidget {
  final List<Widget> rightItems;
  final String title;
  final String subtitle1;
  final String subtitle2;
  final bool showBackButton;
  final bool hasActiveTask;

  const Header({
    Key key,
    this.rightItems,
    this.title = '',
    this.subtitle1 = '',
    this.subtitle2 = '',
    this.showBackButton = false,
    this.hasActiveTask = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      clipBehavior: Clip.antiAlias,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: showBackButton ? 72 : hasActiveTask ? 230 : 120.0,
          color: Color(0xff181818).withOpacity(0.98),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: showBackButton == true ? 0 : 20,
                  right: 20,
                  top: 16,
                  bottom: 8
                ),
                child: Row(
                  children: <Widget>[
                    showBackButton ?
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Color(0xfff2f2f2),), 
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ) :
                    Text(title,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff2f2f2)
                          ),
                    ),
                    Expanded(flex: 1, child: Container(),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: rightItems,
                    )
                  ],
                ),
              ),
              !showBackButton ? Padding(
                padding: EdgeInsets.only(left: 20, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(subtitle1, style: TextStyle(color: Color(0xfff2f2f2).withOpacity(0.6)),),
                    Text(subtitle2, style: TextStyle(color: Color(0xfff2f2f2).withOpacity(0.6)),),
                  ],
                ),
              ) : null,
              hasActiveTask ? ActiveTask() : null
            ].where((o) => o != null).toList(),
          ),
        ),
      ),
    );
  }
}