// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BGT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int sayi = 0;
int sayi2 = 10;
int sayi3 = 100;
int sayi4 = 1000;
String yazi = "";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5Mayis2023"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/duvarkagidi.jpg.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          color: Colors.white.withOpacity(0.4),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //*-*-*--*-*-*-*-*--*-*-*-*-*-*-*-*--*-*-*-*-*-*-
              // ignore: prefer_interpolation_to_compose_strings
              Text("ElevatedButton1 :" " " + sayi.toString()),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sayi++;
                    });

                    // ignore: avoid_print
                    print(sayi);
                  },
                  child: const Text("elevatedButton1")),
              const SizedBox(
                height: 30,
              ),
              // ignore: prefer_interpolation_to_compose_strings
              Text("İconbutton :" + sayi2.toString()),
              IconButton(
                onPressed: () {
                  setState(() {
                    sayi2 += 10;
                  });

                  // ignore: avoid_print
                  print(sayi2);
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // ignore: prefer_interpolation_to_compose_strings
              Text("TextBottun:" " " + sayi3.toString()),
              TextButton(
                onPressed: () {
                  setState(() {
                    sayi3 += 100;
                  });

                  // ignore: avoid_print
                  print(sayi3);
                },
                child: const Text("TextButton"),
              ),
              const SizedBox(
                height: 30,
              ),
              Text("OutlineButton : $sayi4"),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      sayi4 += 1000;
                    });
                    // ignore: avoid_print
                    print(sayi4);
                  },
                  child: const Text("OutlineButton")),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.green,
                ),
                onTap: () {
                  // ignore: avoid_print
                  print("Ontap çalıştı");
                },
                onDoubleTap: () {
                  // ignore: avoid_print
                  print("OnDaubleTap çalıştı");
                },
                onLongPress: () {
                  // ignore: avoid_print
                  print("OnLonPress çalıştı");
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      yazi = value;
                    });
                    // ignore: avoid_print
                    print(yazi);
                  },
                  cursorColor: Colors.black,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Adınızı girininiz",
                      hintStyle: TextStyle(fontStyle: FontStyle.italic)),
                ),
                alignment: Alignment.center,
                height: 50,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/duvarkagidi.jpg.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: Offset(0, 3)),
                  ],
                ),
              ),

              Text(
                yazi,
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
