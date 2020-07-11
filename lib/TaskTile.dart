import 'package:flutter/material.dart';
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
      trailing: TaskCheckbox(checkeBoxstate: isChecked,toggleCheckbox:checkboxCallback ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkeBoxstate,this.toggleCheckbox});
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


