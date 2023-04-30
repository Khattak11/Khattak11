import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final String url;

  const LinkButton({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.url,
  }) : super(key: key);

  @override
  State<LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
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
          color: isHover == false
              ? Theme.of(context).backgroundColor
              : Theme.of(context).brightness == Brightness.dark
                  ? Colors.grey.shade700
                  : Colors.grey.shade200,
          //  color: isHover ? Colors.grey.shade200 : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isHover ? Colors.black : Colors.grey,
            width: isHover ? 1.5 : 0,
          ),
        ),
        duration: const Duration(milliseconds: 100),
        child: Row(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FaIcon(widget.icon),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(widget.subtitle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
