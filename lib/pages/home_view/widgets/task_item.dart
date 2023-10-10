import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItemWidget extends StatelessWidget {
  TaskItemWidget({super.key});

  List<Color> gradient = [Color(0xFF61E757), Color(0xFFEC4B4B)];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: gradient,
              begin: Alignment.centerRight,
              end: Alignment.centerLeft),
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(15)),
      child: Slidable(
        startActionPane: ActionPane(
            extentRatio: 0.2,
            motion: const DrawerMotion(),
            children: [
              SlidableAction(
                borderRadius: BorderRadius.circular(15),
                autoClose: true,
                flex: 2,
                onPressed: (context) {},
                backgroundColor: theme.colorScheme.primaryContainer,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ]),
        endActionPane:
            ActionPane(extentRatio: 0.2, motion: DrawerMotion(), children: [
          SlidableAction(
            borderRadius: BorderRadius.circular(15),
            autoClose: true,
            flex: 2,
            onPressed: (context) {},
            backgroundColor: Color(0xFF61E757),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Edit',
          ),
        ]),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          height: 115,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 5,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(12)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "play basket ball",
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    "go to club with friend",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.alarm,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "10:30 AM",
                        style: theme.textTheme.bodySmall,
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: 35,
                width: 75,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: ImageIcon(
                  AssetImage("assets/images/task icon check.png"),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
