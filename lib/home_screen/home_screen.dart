
import 'package:flutter/material.dart';
import 'package:tuxshare/home_screen/adaptive_app_bar.dart';
import 'package:tuxshare/home_screen/transfer_panel.dart';
import 'package:tuxshare/io/resource_provider.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                children: const [
                  Image(
                    image: android,
                    width: 64,
                    height: 64,
                  ),
                  Icon(
                    // Icons.not_interested_outlined,
                    // color: Colors.grey,
                    Icons.published_with_changes_outlined,
                    color: Colors.blue,
                  ),
                  Image(
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



