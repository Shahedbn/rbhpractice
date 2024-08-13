
import 'package:flutter/material.dart';
main(){
  runApp(const MyApp());//Applicaton
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     theme: ThemeData(primarySwatch: Colors.green),
       darkTheme: ThemeData(primarySwatch: Colors.amber),
       color: Colors.blue,
       debugShowCheckedModeBanner: false,
       home:HomeActivity()
   );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  
  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Message"))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Practice App'),
        titleSpacing: 10,
        toolbarHeight: 60,
        backgroundColor: Colors.orange,

        actions: [
          IconButton(onPressed: (){MySnackBar("I am Home", context);}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){MySnackBar("I am Setting", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("I am Message", context);}, icon: Icon(Icons.message)),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: (){
          MySnackBar("I am Floting Action Button", context);
        },
      ),//17 Floting Action Button
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Profile")
        ],
            onTap: (int index){
          if(index==0){
    MySnackBar("I am Home Menu", context);
    }
    if(index==1){
      MySnackBar("I am Person Menu", context);
    }
    if(index==2){
    MySnackBar("I am Home Profile", context);
    }
    },
      ),//18 Bottom Nav Bar সর্ম্পর্ণ মেসেজ আসে না
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text("Shahed"),
              accountEmail: Text("Shahed@gmail.com"),
            ),

            ),

            ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: (){MySnackBar("Home", context);}),
            ListTile(leading: Icon(Icons.book), title: Text("Preli"), onTap: (){MySnackBar("Preli", context);}),
            ListTile(leading: Icon(Icons.book_outlined), title: Text("Final"), onTap: (){MySnackBar("Final", context);}),
            ListTile(leading: Icon(Icons.balance_rounded), title: Text("Bar"), onTap: (){MySnackBar("Bar", context);})
          ],
        ),

      ),//19 Navigation Drawer

      body: Text('My name is Shahidul Islam Shahed শাদমান ইসলাম (সাদিক)'),



    );
  }
}