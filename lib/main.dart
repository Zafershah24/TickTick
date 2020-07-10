import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}

class TaskScreen extends StatelessWidget {
  Widget buildBottomSheet(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(33),
            topRight: Radius.circular(33),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.pinkAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 7),
            FlatButton(
              onPressed: (){},
              color: Colors.pink,
              child: Text(
                'Add',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildBottomSheet);
        },
        backgroundColor: Colors.pinkAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.pinkAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding:
                  EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.format_list_bulleted,
                      color: Colors.pink,
                      size: 34.0,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TypewriterAnimatedTextKit(
                    text: ['TickTICK'],
                    speed: Duration(milliseconds: 300),
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 50),
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart,
                  ),

//                Text('TickTick',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w800,fontSize: 50),),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    ' 10 Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33))),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked=false;
  void checkboxCallback (bool checkBoxstate){
    setState(() {
      isChecked=checkBoxstate;
    });

  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is a check',style: TextStyle(fontWeight:FontWeight.w400,fontSize:17,decoration: isChecked? TextDecoration.lineThrough:null),),
      trailing: taskCheckbox(checkeBoxstate: isChecked,toggleCheckbox:checkboxCallback ),
    );
  }
}

class taskCheckbox extends StatelessWidget {
taskCheckbox({this.checkeBoxstate,this.toggleCheckbox});
  final bool checkeBoxstate;
  final Function toggleCheckbox;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.pinkAccent,
      value: checkeBoxstate,
      onChanged:toggleCheckbox,
    );
  }
}


