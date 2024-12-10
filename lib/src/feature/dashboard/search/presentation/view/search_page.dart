import 'package:felsi/src/core/service/routes/routes.dart';
import 'package:felsi/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part '../widgets/post_grid.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            context.pushNamed(Routes.userInputPage);
          },
          child: Container(
            width: double.infinity,
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: context.color.divider.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: context.color.text.secondary),
                const SizedBox(width: 12),
                Text(
                  "Search",
                  style: context.textStyle.body14Regular.copyWith(
                    color: context.color.text.secondary,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: _PostGrid(),
    );
  }
}
