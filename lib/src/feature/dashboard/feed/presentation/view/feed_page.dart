import 'package:felsi/src/core/theme/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/gen/assets.gen.dart';

part '../widgets/post_card.dart';
part '../widgets/title_bar.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _TitleBar(),
          const _PostCard(
            userName: 'Tokio',
            likes: '8500',
          ),
          const Divider(thickness: 5),
          const _PostCard(
            userName: 'Lily',
            likes: '71,6503',
          ),
        ],
      ),
    );
  }
}
