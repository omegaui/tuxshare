
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tuxshare/home_screen/transfer_button.dart';
import 'package:tuxshare/io/connection.dart';
import 'package:tuxshare/universal_widgets/logotext.dart';
import 'package:tuxshare/universal_widgets/tux_icon_button.dart';

class AdaptiveAppBar extends StatelessWidget{
  const AdaptiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        children: [
          Row(
            children: [
              const LogoText(size: 38),
              Text(
                "version 1.0",
                style: TextStyle(
                  fontFamily: "ComicSansBold",
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  color: Colors.grey.shade700,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TuxIconButton(
                      onPressed: () {  },
                      icon: Icon(
                        Icons.info_outlined,
                        color: Colors.grey.shade900,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 40,
            children: [
              TransferButton(
                onPressed: () {},
                iconData: Icons.send_time_extension_rounded,
                color: Colors.blue.withOpacity(.5),
                text: "Send",
                enabled: connected,
              ),
              TransferButton(
                onPressed: () {},
                iconData: Icons.open_with_rounded,
                color: Colors.blue.withOpacity(.5),
                text: "Receive",
                enabled: connected,
              ),
              TransferButton(
                onPressed: () {},
                iconData: Icons.file_copy_rounded,
                color: Colors.blue.withOpacity(.5),
                text: "Files",
                enabled: connected,
              ),
            ],
          ),
        ],
      ),
    );
  }

}


