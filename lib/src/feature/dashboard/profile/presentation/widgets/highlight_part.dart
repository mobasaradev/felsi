part of '../view/profile_page.dart';

class _HighlightPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Highlights',
            style: context.textStyle.body16Bold,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: const NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrufL5XMgdQN8yrEq-kW62Ixhu60NtaPLRSA&s',
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Highlight',
                      style: context.textStyle.body12Regular,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
