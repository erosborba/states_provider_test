import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states_provider_test/models/ui.dart';
import 'package:states_provider_test/screens/about.dart';
import 'package:states_provider_test/screens/home.dart';
import 'package:states_provider_test/screens/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UI())],
      child: MaterialApp(initialRoute: '/', routes: {
        '/': (context) => Home(),
        '/about': (context) => About(),
        '/settings': (context) => Settings(),
      }),
    );
  }
}
