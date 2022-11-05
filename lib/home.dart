import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: Column(
        children: [
          const Text(
            "This is Home page",
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(width: double.infinity, height: 10),
          Text(
            counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter = counter + 1;
              });
              print(counter);
            },
            child: const Text("Increment"),
          )
        ],
      ),
    );
  }
}
