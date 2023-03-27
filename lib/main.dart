import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña tab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
} // mi aplicacion

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //FINNNNNNN MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            //isScrollable: true,
            //indicatorColor: Colors.black,
            //indicatorWeight: 10,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/images/placeholder.png'),
                    fit: BoxFit.fitWidth)),
            tabs: [
              Tab(icon: Icon(Icons.label_important_rounded)),
              Tab(icon: Icon(Icons.screen_lock_portrait_rounded)),
              Tab(icon: Icon(Icons.dry_sharp)),
              Tab(icon: Icon(Icons.screen_lock_rotation_sharp)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.label_important_rounded, size: 350),
            Icon(Icons.screen_lock_portrait_rounded, size: 350),
            Icon(Icons.dry_sharp, size: 350),
            Icon(Icons.screen_lock_rotation_sharp, size: 350),
          ],
        ),
      ),
    );
  }
} //FINNN _MyHomePageState
