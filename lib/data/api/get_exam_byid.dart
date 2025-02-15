import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Examid> fetchExam() async {
  final response = await http.get(Uri.parse(
      'https://exam.elevateegy.com/api/v1/exams/6700707030a3c3c1944a9c5d'));

  if (response.statusCode == 200) {
    return Examid.fromJson(json.decode(response.body)["exam"]);
  } else {
    throw Exception('Failed to load exam');
  }
}

class Examid {
  final String id;
  final String title;
  final int duration;
  final String subject;
  final int numberOfQuestions;
  final bool active;
  final DateTime createdAt;

  Examid({
    required this.id,
    required this.title,
    required this.duration,
    required this.subject,
    required this.numberOfQuestions,
    required this.active,
    required this.createdAt,
  });

  factory Examid.fromJson(Map<String, dynamic> json) {
    return Examid(
      id: json['_id'],
      title: json['title'],
      duration: json['duration'],
      subject: json['subject'],
      numberOfQuestions: json['numberOfQuestions'],
      active: json['active'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}
