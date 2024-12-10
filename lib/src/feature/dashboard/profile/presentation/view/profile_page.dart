import 'package:felsi/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../../../core/gen/assets.gen.dart';
import '../widgets/item_count_row.dart';

part '../widgets/button_row.dart';
part '../widgets/highlight_part.dart';
part '../widgets/meta_data.dart';
part '../widgets/user_post_grid.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Meta section
          _MetaData(),
          const ItemCountRow(),
          const SizedBox(height: 10),

          // Buttons Row
          _ButtonRow(),
          const SizedBox(height: 10),

          // Highlights Section
          _HighlightPart(),
          const SizedBox(height: 20),

          // Posts Grid Section
          _UserPostGrid(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
