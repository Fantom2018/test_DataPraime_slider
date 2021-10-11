import 'package:flutter/material.dart';
import 'package:tests_datapraimer_slider/weight_slider.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wawe Weight Slider'),

      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: WaveSlider(),
        ),
      ),
    );
  }
}




