part of '../view/feed_page.dart';

class _PostCard extends StatefulWidget {
  const _PostCard({
    required this.userName,
    required this.likes,
  });
  final String userName;
  final String likes;

  @override
  State<_PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<_PostCard> {
  bool isExpanded = false;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          isExpanded = !isExpanded;
        });
      };
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPvOcypY38se9FpNn_ugFhgQ8B7LVh8QcjNA&s'),
              ),
            ),
            Text(
              widget.userName,
              style: context.textStyle.body14Bold,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPvOcypY38se9FpNn_ugFhgQ8B7LVh8QcjNA&s",
          fit: BoxFit.cover,
          width: double.infinity,
          height: 300,
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              IconButton(
                icon: Assets.icons.activityFeed.svg(),
                onPressed: () {},
              ),
              IconButton(
                icon: Assets.icons.comment.svg(),
                onPressed: () {},
              ),
              IconButton(
                icon: Assets.icons.share.svg(),
                onPressed: () {},
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: Assets.icons.save.svg()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${widget.likes} likes",
                style: context.textStyle.body14Bold,
              ),
              const SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  text: "${widget.userName} ",
                  style: context.textStyle.body14Bold,
                  children: <TextSpan>[
                    TextSpan(
                      text: isExpanded
                          ? 'I have filmed a small vlog of north Dhaka, and I’m very excited to post on YouTube, will post it soon for you all to enjoy!'
                          : 'I have filmed a small vlog of north Dhaka, and I’m very excited to post on YouTube, will po...',
                      style: context.textStyle.body14Light,
                    ),
                    if (!isExpanded)
                      TextSpan(
                        text: ' more',
                        recognizer: _tapGestureRecognizer,
                        style: context.textStyle.body14Light,
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'View all 1,012 comments',
                style: context.textStyle.body14Regular,
              ),
              const SizedBox(height: 8),
              Text(
                '1 day ago',
                style: context.textStyle.body12Light,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
