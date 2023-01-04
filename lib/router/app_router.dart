import 'package:app_flutter_1/models/models.dart';
import 'package:app_flutter_1/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initialRoute = "home";

  static final menuOption = <MenuOptions>[
    MenuOptions(
        route: 'alert',
        icono: Icons.warning_rounded,
        nombre: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'animated',
        icono: Icons.play_circle,
        nombre: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOptions(
        route: 'avatar',
        icono: Icons.person,
        nombre: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOptions(
        route: 'card',
        icono: Icons.card_membership,
        nombre: 'Card Screen',
        screen: const CardScreen()),
    MenuOptions(
        route: 'input',
        icono: Icons.text_fields,
        nombre: 'Input Screen',
        screen: const InputScreen()),
    MenuOptions(
        route: 'listviewbuider',
        icono: Icons.view_agenda,
        nombre: 'ListView Builder Screen',
        screen: const ListViewBuilderScreen()),
    MenuOptions(
        route: 'listview',
        icono: Icons.list,
        nombre: 'List View 1 Screen',
        screen: const ListView1Screen()),
    MenuOptions(
        route: 'slider',
        icono: Icons.sledding,
        nombre: 'Slider Screen',
        screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    routes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var item in menuOption) {
      routes.addAll({item.route: (BuildContext context) => item.screen});
    }

    return routes;
  }
}
