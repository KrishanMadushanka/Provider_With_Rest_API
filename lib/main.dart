import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'providers/data_provider.dart';
import 'views/screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: MyApp(),
    ),
  );
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<DataProvider>(create: (_) => DataProvider()),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: HomeScreen(),
    );
  }
}
