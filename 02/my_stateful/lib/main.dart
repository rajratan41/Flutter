import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz"
  ];
  String defaultText = "Spanish Number";

  void displaySNumbers() {
    setState(() {
      defaultText = spanishNumbers[counter];
      if (counter < 9) {
        counter = counter + 1;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Stateful App'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                defaultText,
                style: const TextStyle(fontSize: 30.0),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                onPressed: displaySNumbers,
                child: const Text('Call Numbers'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
