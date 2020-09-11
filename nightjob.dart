//ChrisChampaco - at some point during COVID-19


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hey! Good job practicing programming.'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Constitency is the secret to success."),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdRoute()),
            );
          },
        ),
        ),
      );
  } //Widget Build part
} // Class curly bracket

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The weather today was especially hot. "),
      ),
      body: Image.network(
      'https://media.giphy.com/media/l0ErF5NVjqvvquRna/giphy.gif'
      ),
    );
  }
}