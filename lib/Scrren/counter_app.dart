

import 'package:counter_app/widgets/coustom_icon_button.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Center(
          child: Text(
            'Counter',
            style: TextStyle(color: Colors.white, fontSize: 70),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding:  const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CoustomIconButton(
                icon: Icons.add,
                onPressed: () {
                  counter++;
                  setState(() {});
                },
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,

                  backgroundColor: Colors.brown,
                ),
              ),
              CoustomIconButton(
                icon: Icons.remove,
                onPressed: () {
                  counter--;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
