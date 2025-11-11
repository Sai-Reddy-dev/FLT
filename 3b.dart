import 'package:flutter/material.dart'; 
 
void main() => runApp(const ResponsiveBreakpointsApp()); 
 
class ResponsiveBreakpointsApp extends StatelessWidget { 
  const ResponsiveBreakpointsApp({Key? key}) : super(key: key); 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      title: 'Responsive UI with Breakpoints', 
      home: const HomePage(), 
    ); 
  } 
} 
 
class HomePage extends StatelessWidget { 
  const HomePage({Key? key}) : super(key: key); 
 
  @override 
  Widget build(BuildContext context) { 
    // Get screen width 
    double screenWidth = MediaQuery.of(context).size.width; 
 
    // Define breakpoints 
    bool isMobile = screenWidth < 600; 
    bool isTablet = screenWidth >= 600 && screenWidth < 1024; 
    bool isDesktop = screenWidth >= 1024; 
 
    return Scaffold( 
 appBar: AppBar( 
        title: const Text("Responsive UI Example"), 
        backgroundColor: Colors.teal, 
      ), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            // Header 
            Text( 
              "Screen Width: ${screenWidth.toStringAsFixed(0)} px", 
              style: const TextStyle(fontSize: 20), 
            ), 
            const SizedBox(height: 20), 
 
            // Adaptive Layout 
            if (isMobile) 
              buildBox("Mobile Layout", Colors.orange, screenWidth * 0.8) 
            else if (isTablet) 
              buildBox("Tablet Layout", Colors.blue, screenWidth * 0.6) 
            else if (isDesktop) 
              buildBox("Desktop Layout", Colors.green, screenWidth * 0.4), 
          ], 
        ), 
      ), 
    ); 
  } 
  Widget buildBox(String text, Color color, double width) { 
    return Container( 
      width: width, 
      height: 150, 
      decoration: BoxDecoration( 
        color: color, 
        borderRadius: BorderRadius.circular(12), 
      ), 
      child: Center( 
        child: Text( 
          text, 
          style: const TextStyle(fontSize: 24, color: Colors.white), 
        ), 
      ), 
    ); 
  } 
}
