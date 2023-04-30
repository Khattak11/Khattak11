import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  final IconData icon;
  final String url;
  const ContactUs({
    Key? key,
    required this.icon,
    required this.url
  })
      : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()  async{
        if (await canLaunch(widget.url)) {
          await launch(widget.url);
        } else {
          throw 'Could not launch ${widget.url}';
        }
      },
      onHover: (val) {
        setState(() {
          isHover = val;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
          // color: isHover ? Colors.grey : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: isHover ? Colors.grey : Colors.white,
              width: 2
          ),
        ),
        duration: const Duration(milliseconds: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            Card(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: FaIcon(widget.icon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

