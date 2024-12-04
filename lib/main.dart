import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text("app", style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/user.png",
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("hey, I'm sachin",
                    style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 2)),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("I'm a mobile developer",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        letterSpacing: 2)),
              ),
              SizedBox(
                width: 120,
                child: const Divider(
                  height: 30,
                  color: Colors.grey,
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "email me",
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              isDarkMode = !isDarkMode;
            });
          },
          backgroundColor: Colors.yellow[700],
          child: Icon(Icons.color_lens),
        ),
      ),
    );
  }
}
