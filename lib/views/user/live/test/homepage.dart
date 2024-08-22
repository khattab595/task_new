import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/views/widgets/appbar.dart';

import 'joinWithCode.dart';
import 'new_meeting.dart';

class LiveStreamsView extends StatelessWidget {
  const LiveStreamsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(title: Tr.get.liveStream),
      body: Column(children: [
        Image.network("https://user-images.githubusercontent.com/67534990/127524449-fa11a8eb-473a-4443-962a-07a3e41c71c0.png"),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
          child: ElevatedButton.icon(
            onPressed: () {
              Get.to(NewMeeting());
            },
            icon: Icon(Icons.add),
            label: Text(Tr.get.newMeeting),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(350, 30),
              backgroundColor: Colors.indigo,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            ),
          ),
        ),
        Divider(thickness: 1, height: 40, indent: 40, endIndent: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: OutlinedButton.icon(
            onPressed: () {
              Get.to(() => JoinWithCode());
            },
            icon: Icon(Icons.margin),
            label: Text(Tr.get.joinWithaCode),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.indigo,
              side: BorderSide(color: Colors.indigo),
              fixedSize: Size(350, 30),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            ),
          ),
        ),
      ]),
    );
  }
}
