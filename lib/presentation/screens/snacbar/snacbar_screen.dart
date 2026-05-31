import 'package:flutter/material.dart';

class SnacbarScreen extends StatelessWidget {
  static const String name = 'snackbars_screen';
  const SnacbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).clearSnackBars(); // Limpiar cualquier snackbar existente
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola Mundo'),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.green,
        action: SnackBarAction(
          label: 'Deshacer',
          textColor: Colors.white,
          onPressed: () {
            // Acción a realizar al presionar el botón "Deshacer"
          },
        ),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Evita que se cierre al hacer clic fuera del diálogo
      builder: (context) => AlertDialog(
        title: const Text('¿Deseas eliminar el item?'),
        content: const Text('Esta acción no se puede deshacer'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () {
              // Acción a realizar al confirmar la eliminación
              Navigator.of(context).pop();
            },
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars y Dialogs')),
      body: Center(
        child: Column(
          children: [
            FilledButton.tonal(
              child: Text('Licecias usadas'),
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [const Text('Licencias usadas en el proyecto')],
                );
              },
            ),
            FilledButton.tonal(
              child: Text('mostrar dialogo'),
              onPressed: () => openDialog(context),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
