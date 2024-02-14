import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_projects/provider/exampleTwo_provider.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  // double value = 1.0;
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ExampleTwoProvider>(context, listen: true);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Provider Example'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleTwoProvider>(
            builder: (BuildContext context, value, child) {
              return Slider(
                  max: 1.0,
                  min: 0.0,
                  value: value.value,
                  onChanged: (val) {
                    print('object');
                    value.setSlider(val);
                    // setState(() {
                    // value = val;
                    // });
                  });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<ExampleTwoProvider>(
                builder: (BuildContext context, ExampleTwoProvider value,
                    Widget? child) {
                  return Expanded(
                      child: Container(
                    height: 200,
                    color: Colors.green.withOpacity(value.value),
                    child: Center(child: Text('Container one')),
                  ));
                },
              ),
              Consumer<ExampleTwoProvider>(
                builder: (BuildContext context, value, Widget? child) {
                  return Expanded(
                      child: Container(
                    height: 200,
                    color: Colors.red.withOpacity(value.value),
                    child: Center(child: Text('Container Two')),
                  ));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
