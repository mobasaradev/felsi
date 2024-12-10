part of '../view/search_page.dart';

class _PostGrid extends StatelessWidget {
  final List<String> images = [
    'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
    'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
    'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
    'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
    'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
    'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
    'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
    'https://res.cloudinary.com/munkee/image/upload/v1675384712/instasize-website/learn/instagram-logo-abstract-swirl.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
