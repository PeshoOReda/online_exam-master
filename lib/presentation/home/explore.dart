import 'package:flutter/material.dart';
import 'package:online_exam/presentation/home/card_subject.dart';
import 'package:online_exam/presentation/home/search_field.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Subjects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchField(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CardSubject(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
