import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_flutter_app/src/ColorHistory.dart';

class ColorGenerator extends StatefulWidget {
  @override
  _ColorGeneratorState createState() => _ColorGeneratorState();
}

class _ColorGeneratorState extends State<ColorGenerator> {
  var _tappedColors = List<Color>();
  final _hiString = 'Hey there';
  Color _generatedColor = Colors.lightGreenAccent;
  final Random _random = Random();

  generateRandomColor() {
    Color generatedColor = Color.fromARGB(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
    _tappedColors.add(generatedColor);
    setState(() {
      _generatedColor = generatedColor;
    });
  }

  List getColors() {
    return _tappedColors;
  }

  Widget _buildColorGenerator() {
    return Container(
      color: _generatedColor,
      width: double.maxFinite,
      height: double.maxFinite,
      child: InkWell(
          onTap: generateRandomColor,
          child: Center(
            child: Text(
              _hiString + '\n' + _generatedColor.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Color generator'),
          actions: [
            IconButton(
                icon: Icon(Icons.history_toggle_off), onPressed: _historyList),
          ],
        ),
        body: Container(
          child: _buildColorGenerator(),
        ));
  }

  void _historyList() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (BuildContext context) {
        return ColorHistory(_tappedColors);
      }),
    );
  }
}
