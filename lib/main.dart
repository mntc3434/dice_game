import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigoAccent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.messenger),label: 'Inbox'),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active),label: 'Notification'),
          ],
        ),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                  onTap: (){
                    setState(() {
                      leftDiceNumber = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      rightDiceNumber = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          )
        ],
      ),
    );
  }
}


