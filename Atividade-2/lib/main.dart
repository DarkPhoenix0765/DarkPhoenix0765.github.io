import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Responsivo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Responsivo')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Center(
              child: Text(
                'Tela Pequena (Mobile)',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            );
          } else if (constraints.maxWidth < 1200) {
            return Center(
              child: Text(
                'Tela Média (Tablet)',
                style: TextStyle(fontSize: 24, color: Colors.green),
              ),
            );
          } else {
            return Center(
              child: Text(
                'Tela Grande (Desktop)',
                style: TextStyle(fontSize: 24, color: Colors.red),
              ),
            );
          }
        },
      ),
    );
  }
}
