import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: _UiControlsListView(),
    );
  }
}

class _UiControlsListView extends StatefulWidget {
  const _UiControlsListView();

  @override
  State<_UiControlsListView> createState() => _UiControlsListViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsListViewState extends State<_UiControlsListView> {
  bool isDeveloper = true;
  Transportation transportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("Developer mode"),
          subtitle: const Text("Controles adicionales"),
          value: isDeveloper,
          onChanged: (value) => setState(() => isDeveloper = value),
        ),
        ExpansionTile(
          title: const Text("Transportation"),
          subtitle: Text("Selecciona tu medio de transporte preferido"),
          children: [
            RadioGroup<Transportation>(
              groupValue: transportation,
              onChanged: (value) {
                setState(() => transportation = value!);
              },
              child: Column(
                children: [
                  RadioListTile(
                    title: const Text("Car"),
                    subtitle: const Text("Transporte terrestre"),
                    value: Transportation.car,
                  ),
                  RadioListTile(
                    title: const Text("Plane"),
                    subtitle: const Text("Transporte aéreo"),
                    value: Transportation.plane,
                  ),
                  RadioListTile(
                    title: const Text("Boat"),
                    subtitle: const Text("Transporte acuático"),
                    value: Transportation.boat,
                  ),
                  RadioListTile(
                    title: const Text("Submarine"),
                    subtitle: const Text("Transporte acuático"),
                    value: Transportation.submarine,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
