import 'package:flutter/material.dart';

class ColorHistory extends StatefulWidget {
  List colorsList;

  ColorHistory(this.colorsList, {Key key}) : super(key: key);

  @override
  _ColorHistoryState createState() => _ColorHistoryState();
}

class _ColorHistoryState extends State<ColorHistory> {

  Widget list() {
    List tappedColors = widget.colorsList;
    return ListView.builder(
        padding: const EdgeInsets.all(4),
        itemCount: tappedColors.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              height: 50,
              margin: EdgeInsets.all(2),
              color: tappedColors[index],
              child: Center(
                  child: Text(
                '${tappedColors[index].toString()}',
                style: TextStyle(fontSize: 12),
              )));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color history'),
      ),
      body: list(),
    );
  }
}
