//##############################
// my app with flutter
// mrbacco 2022
// main.dart: main file of the app
//###################################

//IMPORT LIBRARIES START
import "package:flutter/material.dart";
import "package:flutter_apps/mongodb.dart" as dbase;
import 'package:http/http.dart' as http;


//IMPORT LIBRARIES END

// MAIN APP AND MAIN PAGE START

// this is the main method of my app, I run my app here!!
void main() {
  runApp(const MrbaccoApp()); // name of my app, root widget of my app
}

// using Android Studio template to create a stateless widget
// class which needs a build method
class MrbaccoApp extends StatelessWidget {
  const MrbaccoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "mrbacco app",
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("search on rockonnect"),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.search) )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("to share classic rock"),
          ),
        ],
      ),
    );
  }
}


