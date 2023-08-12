import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class Xylophone extends StatefulWidget {
  const Xylophone({Key key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  Widget _bulidKey(Color color, int num){
    return Expanded(
      child: Material(
          color: color,
      child: InkWell(
            onTap: (){
              print('Sing note $num');
            },
            child: Container(
              child: Text('Sing note $num'),
            ),
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          _bulidKey(Colors.red, 1),
          _bulidKey(Colors.orange, 2),
          _bulidKey(Colors.amber, 3),
          _bulidKey(Colors.green, 4),
          _bulidKey(Colors.blue, 5),
          _bulidKey(Colors.deepPurple, 6),
          _bulidKey(Colors.purpleAccent, 7),
        ],
      ),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}
