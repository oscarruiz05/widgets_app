import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkProvider = StateProvider<bool>((ref) => false);

// listado de colores inmutable
final colorListProvider = Provider<List<Color>>((ref) => colorList);

final selectedThemeProvider = StateProvider<int>((ref) => 11);