import 'package:flutter/material.dart';

class BookMarkWidget extends StatefulWidget {
  const BookMarkWidget({super.key});

  @override
  State<BookMarkWidget> createState() => _BookMarkWidgetState();
}

class _BookMarkWidgetState extends State<BookMarkWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(image: AssetImage('assets/images/nobookmark.png')),
    );
  }
}
