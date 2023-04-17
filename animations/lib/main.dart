import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSelected = false;

  void changeForPosition() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Text(
              'Coisas mudam',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          GestureDetector(
            onTap: () => changeForPosition(),
            child: AnimatedAlign(
              alignment: isSelected ? Alignment.bottomRight : Alignment.center,
              duration: const Duration(seconds: 1),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: isSelected ? 60 : 100,
                width: isSelected ? 60 : 100,
                margin: EdgeInsets.fromLTRB(
                    0, 0, isSelected ? 30 : 0, isSelected ? 30 : 0),
                decoration: BoxDecoration(
                  borderRadius: isSelected
                      ? BorderRadius.circular(100)
                      : BorderRadius.circular(0),
                  color: isSelected ? Colors.blue : Colors.amberAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
