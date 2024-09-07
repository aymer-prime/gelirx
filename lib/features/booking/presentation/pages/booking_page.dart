import 'package:flutter/material.dart';
import 'package:gelirx/app/extentions/context.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'BookingPage',
          style: context.textTheme.displayLarge,
        ),
      ),
    );
  }
}
