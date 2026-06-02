import 'package:flutter/material.dart';

import '../../presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String name;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.name,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    name: ButtonsScrenn.name,
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    name: CardsScreen.name,
    link: '/cards',
    icon: Icons.credit_card_outlined,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    name: ProgressScreen.name,
    link: '/progress',
    icon: Icons.refresh_outlined,
  ),
  MenuItem(
    title: 'Snackbars y Dialogs',
    subTitle: 'Indicadores de proceso para tareas asincrónicas',
    name: SnacbarScreen.name,
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animaciones',
    subTitle: 'Animaciones controladas y predefinidas',
    name: AnimatedScreen.name,
    link: '/animated',
    icon: Icons.animation_outlined,
  ),
  MenuItem(
    title: 'UI Controls',
    subTitle: 'Controles de Flutter como Switch o Checkbox',
    name: UiControlsScreen.name,
    link: '/ui-controls',
    icon: Icons.build_circle_outlined,
  ),
  MenuItem(
    title: 'App Tutorial',
    subTitle: 'Una aplicación de ejemplo para aprender Flutter',
    name: AppTutorialScreen.name,
    link: '/tutorial',
    icon: Icons.school_outlined,
  ),
  MenuItem(
    title: 'Infinite Scroll',
    subTitle: 'Una lista infinita de elementos',
    name: InfiniteScrollScreen.name,
    link: '/infinite-scroll',
    icon: Icons.list_alt_outlined,
  ),
];
