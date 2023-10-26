import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions Screen'),
        leading: IconButton(
          icon: const Icon(Icons.abc), 
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(color: Colors.black, fontSize: 80)),
            Text(clickCounter == 1 ? 'click' : 'clicks', style: const TextStyle(color: Colors.black, fontSize: 30),),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
              onPressed: (){
                setState(() {
                  clickCounter++;
                });
              },
              child: const Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () => {
              setState(() => clickCounter = 0
              )
            },
            child: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}