
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tuxshare/universal_widgets/logotext.dart';

class TransferPanel extends StatelessWidget{
  const TransferPanel({super.key});

  Widget _buildTransferPanelView(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          'assets/60064-file-transfer-loop-animation.json',
        ),
        Text(
          Platform.isLinux ? "Connect to an android" : "Connect to a linux",
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: MediaQuery.of(context).size.height - 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: Colors.blueAccent.withOpacity(0.4),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: SingleChildScrollView(
          child: _buildTransferPanelView(),
        ),
      ),
    );
  }

}



