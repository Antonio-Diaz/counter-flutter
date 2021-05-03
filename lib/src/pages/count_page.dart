import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  createState() => _CountePageState();
}

class _CountePageState extends State<CountPage> {
  final _styleText = new TextStyle(fontSize: 25);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
          elevation: 10.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'clicks:',
                style: _styleText,
              ),
              Text('$_count', style: _styleText)
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: (Icon(Icons.exposure_zero)),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _remove,
          child: (Icon(Icons.remove)),
        ),
        SizedBox(
          width: 5,
        ),
        FloatingActionButton(
          onPressed: _add,
          child: (Icon(Icons.add)),
        ),
      ],
    );
  }

  void _add() => setState(() => _count++);
  void _remove() => setState(() => _count--);
  void _reset() => setState(() => _count = 0);
}
