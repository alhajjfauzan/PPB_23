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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 171, 121, 237)),
      ),
      home: const MyHomePage(title: 'Home'),
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
 Widget lingkaranWidget(String title) { return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey[300],
      ),
      SizedBox(height: 4),
      Text(
        title,
        style: TextStyle(fontSize: 12),
      ),
    ],
  );
}
  Widget persegiPanjang() {
    return Container(
      width: 100,
      height: 150,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding:EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children:[
                    Text(
                      'Ordo',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(width: 4),
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      lingkaranWidget('Title'),
                      SizedBox(width: 20),
                      lingkaranWidget('Title'),
                      SizedBox(width: 20),
                      lingkaranWidget('Title'),
                      SizedBox(width: 20),
                      lingkaranWidget('Title'),
                      SizedBox(width: 20),
                      lingkaranWidget('Title'),
                      SizedBox(width: 20),
                      lingkaranWidget('Title'),
                      SizedBox(width: 20),
                      lingkaranWidget('Title')
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Sorotan Hari ini',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      persegiPanjang(),
                      persegiPanjang(),
                      persegiPanjang(),
                      persegiPanjang(),
                      persegiPanjang(),
                      persegiPanjang(),
                      persegiPanjang(),
                      persegiPanjang(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Rekomendasi Serangga',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 12),
                Container(
                  width: 500,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: ''),
        ],
      ),
    );
  }
}