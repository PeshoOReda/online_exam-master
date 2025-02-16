import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardExam extends StatelessWidget {
  const CardExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/images/Profit.svg',
              width: 50,
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'High level',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  '20 Question',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'From: 1.00 To: 6.00',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Text(
              '30 Minutes',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
