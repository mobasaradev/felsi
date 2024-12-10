part of '../view/profile_page.dart';

class _UserPostGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: const DecorationImage(
              image: NetworkImage(
                  'https://www.imagella.com/cdn/shop/products/16f850126a03dbd540c6531e87d0ed64.jpg?v=1707576033&width=300'),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
