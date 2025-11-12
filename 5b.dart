import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState()=> MyAppState();
}

class MyAppState extends State<MyApp>{
  //Default Theme is light
  bool isDark = false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Theme Toggle Demo',
      debugShowCheckedModeBanner: false,//Removes Debug debugShowCheckedModeBanner
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,//Toggle
      home:Scaffold(
        appBar:AppBar(
          title: const Text("Theme Toggle Demo"),
          actions: [
            Switch(
              value: isDark,
              onChanged: (value){
                setState((){
                  isDark=value;
                });
              },
            ),
          ],
        ),
        body: const Center(
          child: Text(
            "Hello, Flutter Themes!",
            style: TextStyle(fontSize:24,fontWeight:FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
