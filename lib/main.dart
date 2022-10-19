import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/mapa_page.dart';
import 'package:qr_reader/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => new UiProvider())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'QR Reader',
          initialRoute: 'home',
          routes: {
            'home': (_) => const HomePage(),
            'mapa': (_) => const MapaPage()
          },
          /**
         * Si utilizamos primarySwatch en lugar de primaryColor, aplicamos el mismo color a todos los items de nuestra Material App, en lugar de cambiar el primaryColor y el foatingActionButtonTheme
         */
          theme: ThemeData(
              //primaryColor: Colors.deepPurple,
              //floatingActionButtonTheme: const FloatingActionButtonThemeData(
              //    backgroundColor: Colors.deepPurple)),
              primarySwatch: Colors.deepPurple)),
    );
  }
}

/**
 * State management:
 * provider
 * flutter_bloc
 * getX
 */