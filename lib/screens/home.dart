import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tasks/screens/tasks.dart';

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
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: BottomNavigationBar(
              backgroundColor: Color(0xff292929).withOpacity(0.5),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("Tasks")),
                BottomNavigationBarItem(icon: Icon(Icons.layers), title: Text("Projects")),
              ],
            ),
          ),
        ),
      ),
      body: Tasks(),
    );
  }
}