import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tuxshare/home_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) async {
    if(Platform.isLinux){
      await DesktopWindow.setMaxWindowSize(const Size(1000, 850));
      await DesktopWindow.setMinWindowSize(const Size(1000, 850));
      await DesktopWindow.setWindowSize(const Size(1000, 850));
    }
  });
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ));
    }
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ContentPane(),
        ),
      ),
    );
  }
}

class ContentPane extends StatelessWidget {
  const ContentPane({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
