import 'package:flutter/material.dart';
import 'package:tasks/screens/taskview.dart';
import 'package:tasks/widgets/header.dart';

class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  bool _hasActive = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.only(left: 8, right: 8, top: _hasActive ? 225.0 : 120.0),
            physics: BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return TaskItem();
            },
            itemCount: 60,
          ),
          Header(
            hasActiveTask: _hasActive,
            title: 'Hi, Darrell',
            subtitle1: 'Your tasks for today',
            subtitle2: 'Feb 12',
            rightItems: <Widget>[
              IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},),
              CircleAvatar()
            ],
          )
        ]
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => TaskView()));
        },
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
  }
}