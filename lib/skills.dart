import 'package:flutter/material.dart';

class MySkills extends StatefulWidget {
  const MySkills({Key? key}) : super(key: key);

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  @override
  Widget build(BuildContext context) {

    Chip buildChip(String label) {
      return Chip(
        label: Text(label),
     //   labelStyle: TextStyle(color: Colors.indigo),
    //    side: BorderSide(color: Colors.indigo),
      );
    }
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: const Text(
            'My Skills',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width < 900
              ? MediaQuery.of(context).size.width * 0.9
              : ((MediaQuery.of(context).size.width * 0.8) / 3),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Programming languages',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  buildChip('Dart'),
                  buildChip('C'),
                  buildChip('C++'),
                ],
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width < 900
              ? MediaQuery.of(context).size.width * 0.9
              : ((MediaQuery.of(context).size.width * 0.8) / 3),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Text(
                'Framework',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Divider(),
              buildChip('Flutter')
            ],
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width < 900
                ? MediaQuery.of(context).size.width * 0.9
                : ((MediaQuery.of(context).size.width * 0.8) / 3),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Other Tools',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Divider(),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      buildChip('Github'),
                      buildChip('Firebase')

                    ],
                  ),
                ]
            )
        )
      ],
    );
  }
}

