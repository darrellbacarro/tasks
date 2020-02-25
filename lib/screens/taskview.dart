import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tasks/widgets/header.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(
              padding: const EdgeInsets.only(
                top: 80,
                left: 16,
                right: 16
              ),
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('BL0001', style: TextStyle(
                      color: Color(0xfff2f2f2).withOpacity(0.8),
                      fontSize: 16.0
                    )),
                    Material(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                          child: Text('IN PROGRESS', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xfff2f2f2)),),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8.0,),
                Text('TASK', style: TextStyle(
                  color: Color(0xfff2f2f2).withOpacity(0.2)
                ),),
                SizedBox(height: 4.0,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 
                  softWrap: true,
                  style: TextStyle(
                    height: 1.25,
                    color: Color(0xfff2f2f2),
                    fontSize: 22
                  ),
                ),
                SizedBox(height: 16.0,),
                Text('DESCRIPTION', style: TextStyle(
                  color: Color(0xfff2f2f2).withOpacity(0.2)
                ),),
                SizedBox(height: 6.0,),
                Text('Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 
                  softWrap: true,
                  style: TextStyle(
                    height: 1.25,
                    color: Color(0xfff2f2f2).withOpacity(0.7),
                    fontSize: 16
                  ),
                ),
              ],
            ),
            Header(
              rightItems: <Widget>[
                IconButton(icon: Icon(Icons.delete, color: Color(0xfff2f2f2),), onPressed: () {},)
              ],
              showBackButton: true,
            ),
          ],
        ),
      ),
    );
  }
}