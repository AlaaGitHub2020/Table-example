import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Table Example',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: {0: FractionColumnWidth(0.2)},
//          border: TableBorder.all(),
//          defaultColumnWidth: FractionColumnWidth(0.3),
//          defaultColumnWidth: FixedColumnWidth(
//            100,
//          ),
          defaultColumnWidth: IntrinsicColumnWidth(),
          children: [
            TableRow(
              children: [
                MyRedBox(),
                MyGreenBox(),
                MyPurpleBox(),
              ],
            ),
            TableRow(
              children: [
                MyBlueBox(),
                MyPurpleBox(),
                MyBlueBox(),
              ],
            ),
            TableRow(
              children: [
                MyRedBox(),
                MyBlueBox(),
                MyGreenBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget MyRedBox() {
    return Container(
      color: Colors.red,
      width: 50.0,
      height: 50.0,
      child: Center(
        child: Text(
          'Red Box',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget MyBlueBox() {
    return Container(
      color: Colors.blue,
      width: 200.0,
      height: 200.0,
      child: Center(
        child: Text(
          'Blue Box',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget MyGreenBox() {
    return Container(
      color: Colors.green,
      width: 100.0,
      height: 100.0,
      child: Center(
        child: Text(
          'Green Box',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget MyPurpleBox() {
    return Container(
      color: Colors.purple,
      width: 25.0,
      height: 25.0,
      child: Center(
        child: Text(
          'Purple Box',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
