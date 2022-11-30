import 'package:flutter/material.dart';

import '../constants/constants.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required this.userAvatar,
    required this.userName,
    required this.postImage,
    required this.postText,
    required this.postLike,
    required this.postComment,
    required this.postShare,
    required this.postLocation,
  }) : super(key: key);

  final String userAvatar;
  final String userName;
  final String postImage;
  final String postText;
  final String postLike;
  final String postComment;
  final String postShare;
  final String postLocation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    userAvatar,
                    fit: BoxFit.cover,
                    height: 40,
                  ),
                  const SizedBox(width: kDefaultPadding),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: kDefaultPadding,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        postLocation,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 35,
                    width: 85,
                    decoration: BoxDecoration(
                      color: const Color(0xffFA6650),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding),
              Text(postText),
              const SizedBox(height: kDefaultPadding),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  postImage,
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: kDefaultPadding),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/like.png',
                fit: BoxFit.cover,
                height: 25,
              ),
              const SizedBox(width: 5),
              Text(
                postLike,
                style: const TextStyle(
                  fontSize: kDefaultPadding,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 20),
              Image.asset(
                'assets/icons/comment.png',
                fit: BoxFit.cover,
                height: 25,
              ),
              const SizedBox(width: 5),
              Text(
                postComment,
                style: const TextStyle(
                  fontSize: kDefaultPadding,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 20),
              Image.asset(
                'assets/icons/share.png',
                fit: BoxFit.cover,
                height: 25,
              ),
              const SizedBox(width: 5),
              Text(
                postShare,
                style: const TextStyle(
                  fontSize: kDefaultPadding,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(width: 2),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
