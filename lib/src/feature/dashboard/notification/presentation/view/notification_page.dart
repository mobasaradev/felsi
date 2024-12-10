import 'package:felsi/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

part '../widgets/notification_item.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  final List<Map<String, dynamic>> notifications = [
    {
      'avatar':
          'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
      'username': 'paulcomrad.design',
      'action': 'started following you.',
      'time': '1h',
      'button': 'Follow',
    },
    {
      'avatar':
          'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
      'username': 'appbrainn',
      'action': 'liked your post.',
      'time': '3h',
      // 'image': 'assets/post1.png',
      'button': 'Follow',
    },
    {
      'avatar':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4mtAJwHfnFUSoKjuLpJJUbTpE9EgPkVrl-g&s',
      'username': 'appbrainn_alpontstudio',
      'action': 'liked your post.',
      'time': '3h',
      'image':
          'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Notification",
            style: context.textStyle.body14Bold,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (BuildContext context, int index) {
              return _NotificationItem(
                notification: notifications[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
