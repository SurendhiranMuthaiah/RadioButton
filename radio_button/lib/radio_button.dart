import 'package:flutter/material.dart';

void main() => runApp(const RadioButton());

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _themeIndex = 0;
  final List<ThemeData> _themes = [
    ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.blue,
    ),
    ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.red,
    ),
    ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.green,
    ),
    ThemeData(
      primarySwatch: Colors.purple,
      scaffoldBackgroundColor: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _themes[_themeIndex],
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Radio Buttons',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(
                value: 0,
                groupValue: _themeIndex,
                onChanged: _handleThemeChange,
              ),
              RadioListTile(
                value: 1,
                groupValue: _themeIndex,
                onChanged: _handleThemeChange,
              ),
              RadioListTile(
                value: 2,
                groupValue: _themeIndex,
                onChanged: _handleThemeChange,
              ),
              RadioListTile(
                value: 3,
                groupValue: _themeIndex,
                onChanged: _handleThemeChange,
              ),
            ],
          ),
        ),
      ),
    );
  }
 void _handleThemeChange(int?value){
  setState(() {
    _themeIndex = value!;
  });
 }
}












