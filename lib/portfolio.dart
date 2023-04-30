import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/skills.dart';
import 'about.dart';
import 'educaton.dart';
import 'footer.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool darkMode = false;
  bool isMobile = true;
  final skillskey = GlobalKey();
  final educationkey = GlobalKey();
  final contactUs = GlobalKey();

  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(educationkey.currentContext!);
            },
            child: Text("Education")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(skillskey.currentContext!);
            },
            child: Text("Skills")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(contactUs.currentContext!);
            },
            child: Text("Contact us")),
      ),
    ];
    super.initState();
  }

  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.dark ? Colors.grey[1200] : Colors.purple.shade50,
        appBar: AppBar(
          title: const Text("App & web Developer"),
          actions: isMobile == false ? navItems : null,
          // leading: ElevatedButton(
          //   onPressed: () {
          //     setState(() {
          //       darkMode =! darkMode;
          //       darkMode == true ? ThemeData.dark() : ThemeData.light();
          //     });
          //   },
          //   child: darkMode ? FaIcon(Icons.nightlight_round_outlined) : Icon(Icons.wb_sunny),
          // ),
          elevation: 0,
        ),
        drawer: isMobile
            ? Drawer(
                child: ListView(
                  children: navItems,
                ),
              )
            : null,
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 25,
                    runSpacing: 25,
                    children: [
                      const About(),
                      Education(key: educationkey,),
                    ],
                  ),
                  const SizedBox(height: 30, ),
                  MySkills(key: skillskey,),
                  const SizedBox(height: 30,),
                  Footer(key: contactUs,),
                ],
              ),
            ),
          ),
       )
    );
  }
}
