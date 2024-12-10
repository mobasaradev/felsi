part of '../view/notification_page.dart';

class _NotificationItem extends StatelessWidget {
  const _NotificationItem({required this.notification});
  final Map<String, dynamic> notification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Row(
        children: [
          if (notification.containsKey('avatar'))
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(notification['avatar']),
              ),
            ),
          if (notification.containsKey('avatars'))
            SizedBox(
              width: 48,
              child: Stack(
                children: List<Widget>.generate(
                  notification['avatars'].length,
                  (i) => Positioned(
                    left: i * 16.0,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(notification['avatars'][i]),
                    ),
                  ),
                ),
              ),
            ),
          const SizedBox(width: 12),
          Expanded(
            flex: 2,
            child: RichText(
              text: TextSpan(
                text: notification.containsKey('username')
                    ? '${notification['username']} '
                    : '',
                style: context.textStyle.body14Bold,
                children: [
                  TextSpan(
                    text: notification['action'] ?? notification['text'] ?? '',
                    style: context.textStyle.body14Regular,
                  ),
                  TextSpan(
                    text: ' ${notification['time']}',
                    style: context.textStyle.body14Regular.copyWith(
                      color: context.color.text.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          if (notification.containsKey('button'))
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  notification['button'],
                ),
              ),
            ),
          if (notification.containsKey('image'))
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  notification['image'],
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
