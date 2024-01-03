// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:fl_project/components/event_card.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isPast;
  final bool isLast;
  final eventCard;
  final IconData iconData;

  const MyTimeLineTile({
    super.key,
    required this.isFirst,
    required this.isPast,
    required this.isLast,
    required this.eventCard,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: Colors.grey.shade200,
        ),
        indicatorStyle: IndicatorStyle(
          width: 36,
          color: isPast ? Colors.grey.shade200 : const Color(0xFFcfcfe5),
          iconStyle: IconStyle(
            iconData: iconData,
            color: isPast ? Colors.grey : const Color(0xFF3A59A8),
          ),
        ),
        endChild: EventCard(
          child: eventCard,
        ),
      ),
    );
  }
}
