part of '../view/feed_page.dart';

class _TitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.logo.appLogo.svg(width: 100),
          const Spacer(),
          Assets.icons.activityFeed.svg(),
          const SizedBox(width: 16),
          Assets.icons.messenger.svg()
        ],
      ),
    );
  }
}
