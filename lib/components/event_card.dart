// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final child;
  const EventCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: child,
    );
  }
}
