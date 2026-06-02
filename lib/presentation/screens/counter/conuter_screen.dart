import 'package:flutter/material.dart';

class ConuterScreen extends StatelessWidget {
  static const String name = 'counter_screen';
  const ConuterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Center(child: Text('Valor: 0', style: titleStyle)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
