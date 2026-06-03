import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkProvider = StateProvider<bool>((ref) => false);

// listado de colores inmutable
final colorListProvider = Provider<List<Color>>((ref) => colorList);

final selectedThemeProvider = StateProvider<int>((ref) => 11);



// usar un StateNotifierProvider para manejar el estado del tema completo, incluyendo el color seleccionado y el modo oscuro

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDark: !state.isDark);
  }

  void changeColor(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}