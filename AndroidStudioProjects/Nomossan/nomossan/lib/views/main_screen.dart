import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nomossan/models/screen_state.dart';
import 'package:nomossan/views/home_screen.dart';
import 'package:nomossan/views/like_list_screen.dart';
import 'package:nomossan/views/history_list_screen.dart';
import 'package:nomossan/views/mypage_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenState>(builder: (context, screenState, child) {
      //各ページ(widget)を格納した変数screenWidgets
      List<Widget> screenWidgets = [
        HomeScreen(),
        LikeListScreen(),
        HistoryScreen(),
        MyPageScreen(),
      ];

      List<String> titleList = [
        'Home',
        'お気に入り',
        '履歴',
        'マイページ',
      ];
      return Scaffold(
        appBar: AppBar(
          title: Text(
            titleList[screenState.screenIndex],
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: screenWidgets[screenState.screenIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('お気に入り'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              title: Text('履歴'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('マイページ'),
            ),
          ],
          currentIndex: screenState.screenIndex,
          selectedItemColor: Colors.amber[800],
          onTap: screenState.changeScreenIndex,
        ),
      );
    });
  }
}
