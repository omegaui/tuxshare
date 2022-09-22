
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tuxshare/universal_widgets/logotext.dart';

class TransferPanel extends StatelessWidget{
  const TransferPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 500,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 3,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/60064-file-transfer-loop-animation.json',
                ),
                Text(
                  Platform.isLinux ? "Connect to an android" : "Connect to a desktop",
                  style: const TextStyle(
                    fontFamily: "ComicSansBold",
                  ),
                ),
                const LogoText(size: 18),
                const Text(
                  "client to start file transfers",
                  style: TextStyle(
                    fontFamily: "ComicSansBold",
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green.shade800,
                  ),
                  child: Text(
                    Platform.isLinux ? "Get Android Client" : "Get Linux Client",
                    style: const TextStyle(
                      fontFamily: "NexaBold",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

}



