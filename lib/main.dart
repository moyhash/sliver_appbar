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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
      body: CustomScrollView(
        slivers: [
          // Sliver AppBar
          SliverAppBar(
            title: const Text('S L I V E R A P P B A R'),
            leading: const Icon(Icons.menu),
            actions: const [
              Icon(Icons.settings),
            ],
            //centerTitle: true,
            expandedHeight: 260,
            //floating: true
            //pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              //background: image.asset(''),
              background: Container(
                color: Colors.deepPurple,
              ),
              title: const Text('S L I V E R A P P B A R'),
            ),
          ),

          //Sliver Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 320,
                  color: const Color.fromARGB(255, 94, 165, 162),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 320,
                  color: const Color.fromARGB(255, 94, 165, 162),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 320,
                  color: const Color.fromARGB(255, 94, 165, 162),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
