import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nomossan/views/main_screen.dart';
import 'models/screen_state.dart';
import 'package:nomossan/views/home_screen.dart';
import 'package:nomossan/views/shop_map.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => ScreenState(),
      child: MaterialApp(
        theme: new ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xFFffd200),
          accentColor: Colors.white,
        ),
        title: 'Flutter Demo',
        routes: <String, WidgetBuilder>{
          '/': (context) => new MainScreen(),
          '/home_screen': (context) => new HomeScreen(),
          '/shop_map': (context) => new MapsDemo(),
        },
        initialRoute: '/',
      ),
    );
  }
}
