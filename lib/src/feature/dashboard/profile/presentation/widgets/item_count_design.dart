part of 'item_count_row.dart';

class _ItemCountDesign extends StatelessWidget {
  const _ItemCountDesign({
    required this.count,
    required this.label,
  });

  final String count;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: context.textStyle.body16Bold,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: context.textStyle.body14Regular,
        ),
      ],
    );
  }
}