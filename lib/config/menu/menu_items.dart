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
];
