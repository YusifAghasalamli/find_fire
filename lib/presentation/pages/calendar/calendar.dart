import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  final List<String> notifications = [
    "Notification 1: This is the first notification.",
    "Notification 2: This is the second notification.",
    "Notification 3: This is the third notification.",
    // Add more notifications as needed
  ];
  CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          // Create a circle with a number
          Widget leading = CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(
              (index + 1).toString(),
              style: const TextStyle(color: Colors.white),
            ),
          );

          // Create the notification text
          String notification = notifications[index];

          return ListTile(
            leading: leading,
            title: Text(notification),
          );
        },
      ),
    );
  }
}
