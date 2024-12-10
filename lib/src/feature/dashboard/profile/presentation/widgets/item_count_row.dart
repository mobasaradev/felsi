import 'package:felsi/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

part 'item_count_design.dart';

class ItemCountRow extends StatelessWidget {
  const ItemCountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ItemCountDesign(label: 'Posts', count: '50'),
            _ItemCountDesign(label: 'Followers', count: '1.75k'),
            _ItemCountDesign(label: 'Following', count: '364'),
          ],
        ),
      ),
    );
  }
}
