import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful VS Stateless Widgets"),
      
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FirstColumn(),
          SecondColumn()
        ],
      ),
    );
  }
}

class FirstColumn extends StatelessWidget {
  const FirstColumn({super.key});

  // This is the stateless text widget 
  @override
  Widget build(BuildContext context) {
    return const Column(

      // This aligns the text widget to the center
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
        "This is Neils first app. Here he learned the difference between a \n " 
        "stateful widget and a stateless widget. The app-bar is stateless. \n "
        "So is this text widget, but the Icon widget does possess a state as \n "
        "it has a basic animation effect.")
        ],
    );
  }
}

class SecondColumn extends StatefulWidget {
  const SecondColumn({super.key});

  @override
  State<SecondColumn> createState() => _SecondColumnState();
}

class _SecondColumnState extends State<SecondColumn> {

  // This is the boolean expression that controls the animation effect
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Column(

      // This command center aligns the button element
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        IconButton(
          icon: Icon(liked? Icons.star : Icons.star_border_outlined),
          onPressed: () {
            setState(() {
              liked = !liked;
            });
          })
      ],
    );
  }
}