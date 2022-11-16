import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Responsive Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage('Flutter Responsive Design'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage(this.title, {Key? key}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Text(title),
        ),
        body: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
            return ListView(
              children: [
                FlutterLogo(
                  size: orientation == Orientation.portrait ? 200.0 : 100.0,
                ),
               Container(
                 alignment: AlignmentDirectional.center,
                 margin: const EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.red,
                 ),
                 width: orientation == Orientation.portrait ? 100.0 : 200.0,
                 height: orientation == Orientation.portrait ? 200.0 : 100.0,

                 child: const Text('1'),
               ),
                Container(
                  alignment: AlignmentDirectional.center,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  width: orientation == Orientation.portrait ? 100.0 : 200.0,
                  height: orientation == Orientation.portrait ? 200.0 : 100.0,
                  child: const Text('2'),
                ),

              ],
            );
          }
        ),
      ),
    );
  }
}


