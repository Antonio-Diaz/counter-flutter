import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle styleText = new TextStyle(fontSize: 25);
  int count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Number of clicks:',
              style: styleText,
            ),
            Text('$count', style: styleText)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hola mundo');
        },
        child: Icon(Icons.add_circle_rounded),
      ),
    );
  }
}
