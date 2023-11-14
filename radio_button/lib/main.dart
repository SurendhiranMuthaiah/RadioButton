import 'package:flutter/material.dart';
import 'package:radio_button/check_box.dart';
import 'package:radio_button/radio_button.dart';
import 'package:radio_button/switch_on_off.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: CheckBox(),
      //home: RadioButton(),
      home: SwitchOnAndOff(),
    );
  }
}
