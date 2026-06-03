import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ConuterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const ConuterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final int counter = ref.watch(counterProvider);
    final bool isDark = ref.watch(isDarkProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkProvider.notifier).state = !isDark;
            },
            icon: Icon(
              isDark == true
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined,
            ),
          ),
        ],
      ),
      body: Center(child: Text('Valor: $counter', style: titleStyle)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
