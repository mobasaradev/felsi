part of '../view/profile_page.dart';

class _MetaData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuqkrmTwI9-fpLa0QxMjqWUvlouucZCTeAfw&s',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Profile Photo
            const Positioned(
              bottom: -50,
              left: 0,
              right: 0,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrufL5XMgdQN8yrEq-kW62Ixhu60NtaPLRSA&s',
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'MJ Ikra',
                style: context.textStyle.title18Bold,
              ),
              Text(
                '@mj_ikra',
                style: context.textStyle.body14Bold,
              ),
              const SizedBox(height: 8),
              Text(
                'This is the bio section. It will contain up to 120 words and describe the user.',
                style: context.textStyle.body12RegularSecondary,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
