import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text('HUMMING BARD'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FLUTTER WEB.',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'THE BASICS',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text( textAlign: TextAlign.justify,
                'In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                  onPressed: (){}, child: const Text('Click Me'),
              ),
            ],
          ),
        ),
        drawer: Drawer (
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.lightBlue,),
                    accountName: Text('SKILL UP NOW'),
                    accountEmail: Text('TAP HERE'),
                  )
              ),
              ListTile(
                title: Text('Episodes'),
                leading: Icon(Icons.movie_filter_outlined),
                onTap: (){},
              ),
              ListTile(
                title: Text('About'),
                leading: Icon(Icons.quiz),
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
