import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_projects/provider/count_provider.dart';
import 'package:provider_projects/screens/exampleTwo.dart';

import '../provider/count_provider.dart';
import '../provider/count_provider.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    // ignore: avoid_print
    print("Build");
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter App using Provider'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            countProvider.setCounter();
          },
        ),
        body: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ExampleTwo()));
                },
                child: Text("Slider using provider")),
            Consumer<CountProvider>(
              builder: (BuildContext context, value, child) {
                print('object');
                return Center(
                  child: Text(
                    countProvider.count.toString(),
                    style: const TextStyle(fontSize: 50),
                  ),
                );
              },
            ),
          ],
        )

        //     Center(
        //         child: Text(countProvider.count.toString(),style: TextStyle(fontSize: 50),),
        //       )

        );
  }
}
