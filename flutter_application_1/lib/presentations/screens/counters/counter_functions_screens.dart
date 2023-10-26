import 'package:flutter/material.dart';

class CounterFunctionsScreens extends StatefulWidget {
  const CounterFunctionsScreens({super.key});

  @override
  State<CounterFunctionsScreens> createState() => _CounterFunctionsScreensState();
}

class _CounterFunctionsScreensState extends State<CounterFunctionsScreens> {

  int clickCounter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            }, 
            icon: const Icon(Icons.refresh)
          )
        ],
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            Icons.plus_one, 
            () {
            setState(() {
              clickCounter++;
            });
          }),
          CustomButton(
            Icons.refresh_outlined,
            () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          CustomButton(
            Icons.exposure_minus_1,
            () {
            setState(() {
              if(clickCounter == 0) return;
              clickCounter--;
            })
            ;}
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton( this.icon, this.onPressed, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      shape: const StadiumBorder(),
      backgroundColor: Colors.black,
      child: Icon(icon),
    );
  }
}