import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    //TODO
    // MenuOptions(
    //     route: 'home',
    //     name: 'HomeScreen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),

    MenuOptions(
        route: 'listview',
        name: 'listview',
        screen: const ListViewScreen(),
        icon: Icons.list_alt_outlined),

    MenuOptions(
        route: 'listview1',
        name: 'listview1',
        screen: const ListView1Screen(),
        icon: Icons.list_sharp),

    MenuOptions(
        route: 'alertview',
        name: 'alertview',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),

    MenuOptions(
        route: 'cartview',
        name: 'cartview',
        screen: const CardScreen(),
        icon: Icons.credit_card),

    MenuOptions(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),

    MenuOptions(
        route: 'animated',
        name: 'Animated',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_fill_outlined),
    MenuOptions(
        route: 'inputs',
        name: 'Inputs',
        screen: const InputScreen(),
        icon: Icons.input_outlined),
    MenuOptions(
        route: 'slider',
        name: 'Slider',
        screen: const SliderScreen(),
        icon: Icons.slideshow_sharp),
    MenuOptions(
        route: 'listview',
        name: 'Infinite Scroll',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview': (BuildContext context) => const ListViewScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'alertview': (BuildContext context) => const AlertScreen(),
  //   'cartview': (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(settings) {
    // print(settings);
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
