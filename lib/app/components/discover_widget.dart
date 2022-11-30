import 'package:flutter/material.dart';
import 'package:flutter_dogdom_uikit/app/components/post_widget.dart';

import '../constants/constants.dart';

class DiscoverWidget extends StatelessWidget {
  const DiscoverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                hintText: 'Search for a pet',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
                fillColor: Colors.grey[200],
                filled: true,
                prefixIcon: Image.asset('assets/icons/search.png'),
                suffixIcon: Image.asset('assets/icons/mic.png'),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('assets/icons/nearby.png', height: 50),
                    const SizedBox(height: 5),
                    const Text(
                      'Nearby',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/icons/revelation.png', height: 50),
                    const SizedBox(height: 5),
                    const Text(
                      'Revelation',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/icons/care.png', height: 50),
                    const SizedBox(height: 5),
                    const Text(
                      'Foster care',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const PostWidget(
            userAvatar: 'assets/images/avatar3.png',
            postText: 'I am a dog lover, I have a dog named\n'
                'Bella, she is a very cute dog, I love her very much.',
            postImage: 'assets/images/post3.png',
            userName: 'Huntington',
            postLike: '235',
            postComment: '60',
            postShare: '20',
            postLocation: 'Dallas, Texas',
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const PostWidget(
            userAvatar: 'assets/images/avatar4.png',
            postText: 'I am a dog lover, I have a dog named\n'
                'Bella, she is a very cute dog, I love her very much.',
            postImage: 'assets/images/post4.png',
            userName: 'Jorge Long',
            postLike: '235',
            postComment: '60',
            postShare: '20',
            postLocation: 'Los Angeles',
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const PostWidget(
            userAvatar: 'assets/images/avatar1.png',
            postText: 'I am a dog lover, I have a dog named\n'
                'Bella, she is a very cute dog, I love her very much.',
            postImage: 'assets/images/post1.png',
            userName: 'Mirabelle Swift',
            postLike: '235',
            postComment: '60',
            postShare: '20',
            postLocation: 'Paris, France',
          ),
          const SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}