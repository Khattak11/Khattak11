import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'animated_button.dart';

class SocialRow extends StatefulWidget {
  const SocialRow({Key? key}) : super(key: key);

  @override
  State<SocialRow> createState() => _SocialRowState();
}

class _SocialRowState extends State<SocialRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          AnimatedButton(
            icon: FontAwesomeIcons.facebook,
            url: 'https://www.facebook.com/profile.php?id=100040451926766&mibextid=ZbWKwL',
          ),
          AnimatedButton(
            icon: FontAwesomeIcons.instagram,
            url: 'https://instagram.com/touseef_khattak97?igshid=ZDdkNTZiNTM=',
          ),
          AnimatedButton(
            icon: FontAwesomeIcons.twitter,
            url: 'https://twitter.com/_Touseef_khan?s=08',
          ),
        ],
      ),
    );
  }
}
