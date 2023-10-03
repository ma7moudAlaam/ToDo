import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Stack(
      alignment: const Alignment(0, 1.8),
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 25),
          height: 180,
          width: double.infinity,
          color: theme.colorScheme.primary,
          child: Text(
            "TO DO List",
            style: theme.textTheme.titleLarge,
          ),
        ),
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          monthColor: Colors.black,
          dayColor: Colors.black,
          activeDayColor: theme.colorScheme.primary,
          activeBackgroundDayColor: Colors.white,
          dotsColor: theme.colorScheme.primary,
          selectableDayPredicate: (date) => date.day != 23,
          locale: 'en_ISO',
        )
      ],
    );
  }
}
