import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('SilverList'))),
      body: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            const Text('Elemento 1'),
            const Text('Elemento 2'),
            const Text('Elemento 3')
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            const Text('Elemento 1'),
            const Text('Elemento 2'),
            const Text('Elemento 3')
          ]),
        )
      ]),
    );
  }
}
