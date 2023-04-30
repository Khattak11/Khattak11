import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// class AnimatedButton extends StatefulWidget {
//   final IconData icon;
//  /// final Function onTap;
//
//   const AnimatedButton({
//     required this.icon,
//     ///required this.onTap,
//   });
//
//   @override
//   State<AnimatedButton> createState() => _AnimatedButtonState();
// }

class AnimatedButton extends StatefulWidget {
  final IconData icon;
  final String url;

  const AnimatedButton({
    required this.icon,
    required this.url,
  });

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.grey,
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
          // color: isHover ? Colors.grey : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme
                .of(context)
                .brightness == Brightness.dark ? isHover ? Colors.white : Colors
                .grey :  isHover ? Colors.grey.shade700 : Colors.white,
          //  isHover ? Colors.grey : Colors.white,
            // width: 2
            width: isHover ? 3 : 1,
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
          ],
        ),
      ),
    );
  }
}

