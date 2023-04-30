import 'package:flutter/material.dart';
import 'package:my_profile/contact_us.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Contact us",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ContactUs(
                icon: FontAwesomeIcons.whatsapp,
                url: 'http://wa.me/+923129199277',
              ),
              ContactUs(
                icon: Icons.email_outlined,
                url: 'http://Touseefktk2019@gmail.com',
              ),
              ContactUs(
                icon: Icons.call,
                url: '',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
