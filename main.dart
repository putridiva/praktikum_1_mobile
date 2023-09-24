import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},

              icon: Icon(Icons.home),
            ),
            actions: [
              IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.menu),
                ),
            ],
            backgroundColor: Colors.pinkAccent,
            title: Center(
              child: Text(
                "Uji Coba",
                style: TextStyle(color: Color.fromARGB(255, 243, 243, 243)),
              ),
            ),
          ),
          body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    "Purnomo Sigit",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    'Jabatan: Direktur',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          )),
    );
  }
}