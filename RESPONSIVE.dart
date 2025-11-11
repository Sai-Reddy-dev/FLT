import 'package:flutter/material.dart'; 
 
void main() => runApp(const ResponsiveUIApp()); 
class ResponsiveUIApp extends StatelessWidget { 
  const ResponsiveUIApp({Key? key}) : super(key: key); 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      title: 'Responsive UI Demo', 
      home: const ResponsiveHome(), 
    ); 
  } 
} 
class ResponsiveHome extends StatelessWidget { 
  const ResponsiveHome({Key? key}) : super(key: key); 
  @override 
  Widget build(BuildContext context) { 
    // Get screen width 
    double screenWidth = MediaQuery.of(context).size.width; 
 
    // Determine device type based on width 
    bool isMobile = screenWidth < 600; 
    bool isTablet = screenWidth >= 600 && screenWidth < 1024; 
    bool isDesktop = screenWidth >= 1024; 
    // Set card width dynamically 
    double cardWidth = isMobile
     ? screenWidth * 0.9 
        : isTablet 
            ? screenWidth * 0.45 
            : screenWidth * 0.25; 
 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text("Responsive UI Example"), 
        backgroundColor: Colors.teal, 
      ), 
      body: SingleChildScrollView( 
        child: Column( 
          children: [ 
            const SizedBox(height: 20), 
            // Header 
            Container( 
              width: double.infinity, 
              padding: const EdgeInsets.all(16), 
              color: Colors.teal[100], 
              child: const Center( 
                child: Text( 
                  "Welcome to Responsive Flutter UI", 
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), 
                  textAlign: TextAlign.center, 
                ), 
              ), 
            ), 
            const SizedBox(height: 20), 
            // Responsive cards using Wrap 
            Wrap( 
              spacing: 16, 
              runSpacing: 16, 
              alignment: WrapAlignment.center, 
              children: List.generate( 
                6, 
                (index) => Container( 
                  width: cardWidth, 
                  height: 150, 
                  decoration: BoxDecoration( 
                    color: Colors.teal[300], 
                    borderRadius: BorderRadius.circular(12), 
                  ), 
                  child: Center( 
                    child: Text( 
                      "Card ${index + 1}", 
                      style: const TextStyle( 
                        fontSize: 20, 
                        color: Colors.white, 
                      ), 
          ), 
                  ), 
                ), 
              ), 
            ), 
            const SizedBox(height: 20), 
            // Footer 
            Container( 
              width: double.infinity, 
              padding: const EdgeInsets.all(16), 
              color: Colors.teal[200], 
              child: const Center( 
                child: Text( 
                  "© 2025 Responsive UI Example", 
                  style: TextStyle(fontSize: 16), 
                ), 
              ), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
} 
