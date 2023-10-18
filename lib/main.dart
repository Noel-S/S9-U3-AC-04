import 'package:biography/screens/biography.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biography',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const Biography(),
    );
  }
}

class Biography extends StatefulWidget {
  const Biography({super.key});

  @override
  State<Biography> createState() => _BiographyState();
}

class _BiographyState extends State<Biography> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TITLE'),
          bottom: const TabBar(tabs: [
            Tab(text: 'Personal Data', icon: Icon(Icons.person_2_rounded)),
            Tab(text: 'Experiences', icon: Icon(Icons.star_rounded)),
            Tab(text: 'School', icon: Icon(Icons.school_rounded)),
          ]),
        ),
        body: TabBarView(
          children: [
            PersonalDataTab(),
            BestMomentsTab(),
            SchoolTab(),
          ],
        ),
      ),
    );
  }
}
