import 'package:flutter/material.dart';
import 'package:provider_projects/provider/count_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider_projects/provider/exampleTwo_provider.dart';
import 'package:provider_projects/screens/Counter.dart';
import 'package:provider_projects/screens/exampleTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CountProvider(),
          ),
          ChangeNotifierProvider(create: (_) => ExampleTwoProvider())
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: counter(),
        ));
  }
}
