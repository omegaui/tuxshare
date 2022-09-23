
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tuxshare/home_screen/adaptive_app_bar.dart';
import 'package:tuxshare/home_screen/transfer_panel.dart';
import 'package:tuxshare/io/resource_provider.dart';

import '../io/connection.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white, Colors.blue], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                AdaptiveAppBar(),
                TransferPanel(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: android,
                    width: 64,
                    height: 64,
                  ),
                  if(!connected)
                    Lottie.asset('assets/93235-no-connection.json', width: 60),
                  if(connected)
                    Lottie.asset('assets/114586-wifi-connecting.json', width: 100),
                  const Image(
                    image: tux,
                    width: 64,
                    height: 64,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}



