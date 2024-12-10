part of '../view/profile_page.dart';

class _ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Assets.icons.edit.svg(color: context.color.primary),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: Assets.icons.share.svg(color: context.color.primary),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: Assets.icons.settings.svg(color: context.color.primary),
          ),
        ],
      ),
    );
  }
}
