import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardExam extends StatelessWidget {
  const CardExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/Profit.svg',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Examid.title',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Questions',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'fromTo',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Text(
              'Duration',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
