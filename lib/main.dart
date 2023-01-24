import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterstorybloktutorial/api_service.dart';
import 'package:flutterstorybloktutorial/storyblok_extensions.dart';

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
  final apiservice = ApiService();

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    final value = await apiservice.getData();
    final contactContent = value?.contactContent;
    final aboutContent = value?.aboutContent;
    final experienceContent = value?.experienceContent;

    log('contact content: $contactContent');
    log('about content: $aboutContent');
    log('experience content: $experienceContent');

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(),
    );
  }
}
