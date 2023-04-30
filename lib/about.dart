import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/socialRow.dart';

import 'linkButton.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Container(
      // height: 850,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width < 900
          ? MediaQuery.of(context).size.width * 0.9
          : MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: const EdgeInsets.all(25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset(
                    "assets/profile_pic.jpg",
                    fit: BoxFit.cover,
                    height: 280,
                    width: 280,
                  ),
                ),
              ),
              const Text(
                'Touseef Khattak',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
              ),
              const Text(
                'I am a developer and I am looking for dev roles across pakistan or United State',
                textAlign: TextAlign.center,
              ),
              Wrap(
                spacing:8.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.center,
                children: [
                  const Chip(
                    label: Text("Full stack developer"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                  const Chip(
                    label: Text("App developer"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                  const Divider(),
                  LinkButton(
                    title: 'Github',
                    subtitle: 'Khattak11',
                    icon: FontAwesomeIcons.githubAlt,
                    url: 'https://github.com/Khattak11',

                  ),
                  LinkButton(
                    title: 'Gitlab',
                    subtitle: 'Touseef khattak',
                    icon: FontAwesomeIcons.gitlab,
                   url: 'https://gitlab.com/touseefktk2019',
                  ),
                  LinkButton(
                    title: 'Linkdin',
                    subtitle: 'Touseef khattak',
                    icon: FontAwesomeIcons.linkedin,
                   url: 'https://www.linkedin.com/in/%D8%AA%D9%88%D8%B5%DB%8C%D9%81-%D8%AE%D9%B9%DA%A9-16874123a',
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: const [
              Divider(),
              SocialRow(),
            ],
          )
        ],
      ),
    );
  }


}
