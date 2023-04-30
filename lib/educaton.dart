import 'package:timeline_tile/timeline_tile.dart';
import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width < 900
          ? MediaQuery.of(context).size.width * 0.9
          : MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Education',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              for (int a = 1; a < 5; a++)
                TimelineTile(
                  alignment: TimelineAlign.center,
                  indicatorStyle: const IndicatorStyle(color: Colors.blue),
                  endChild: a % 2 == 1
                      ? Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('19 APR 2020'),
                              Text('Passed 10th', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                              Text('10th grade passed from particular and with 90% marks were secured by me.'),
                            ],
                        ),
                          )
                  )
                      : null,
                  startChild: a % 2 == 0
                      ? Card(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('19 APR 2020'),
                            Text(
                              'Passed 10th',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                                '10th grade passed from particular and with 90% marks were secured by me.'),
                          ],
                        ))
                      : null,
                ),
            ]),
          ),
          // Timeline.tilebuilder(
          //   shrinkWrap: true,
          //   scrollDirection : Axis.vertical,
          //   builder: TimelineTileBuilder.fromStyle(
          //     itemCount: 4,
          //     contentsAligns: ContentsAlign.alternating,
          //     contentsBuilder: (context, index){
          //       return Card(
          //
          //       );
          //     }
          //   )
          // )
        ],
      ),
    );
  }
}
