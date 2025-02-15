
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 300,
          decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
    decoration: InputDecoration(
      hintText: 'Search',
      hintStyle: TextStyle(color: Colors.black),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(30),
      ),
      prefixIcon: Icon(Icons.search, color: Colors.black),
    ),
    style: TextStyle(color: Colors.black),
          ),
        );
  }
}
