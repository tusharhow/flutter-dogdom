import 'package:flutter/material.dart';
import 'package:flutter_dogdom_uikit/app/components/post_widget.dart';

import '../constants/constants.dart';

class SelectWidget extends StatelessWidget {
  const SelectWidget({Key? key}) : super(key: key);

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
                    Image.asset('assets/icons/ranking.png', height: 50),
                    const SizedBox(height: 5),
                    const Text(
                      'Ranking',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/icons/message.png', height: 50),
                    const SizedBox(height: 5),
                    const Text(
                      'Discuss',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/icons/cart.png', height: 50),
                    const SizedBox(height: 5),
                    const Text(
                      'Surrounding',
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width / 1.25,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(kDefaultPadding),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/dog1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 30,
                        left: 20,
                        child: Text(
                          'Take me home',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 70,
                        left: 20,
                        child: Text(
                          'Take care of stray dogs,\nplease take them home.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 20,
                        child: Container(
                          height: 45,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              'Let me',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: kDefaultPadding),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width / 1.25,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(kDefaultPadding),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/dog2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 30,
                        left: 20,
                        child: Text(
                          'Take me home',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 70,
                        left: 20,
                        child: Text(
                          'Take care of stray dogs,\nplease take them home.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 20,
                        child: Container(
                          height: 45,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              'Let me',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
            postLocation: 'New York',
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const PostWidget(
            userAvatar: 'assets/images/avatar2.png',
            postText: 'I am a dog lover, I have a dog named\n'
                'Bella, she is a very cute dog, I love her very much.',
            postImage: 'assets/images/post2.png',
            userName: 'Jorge Long',
            postLike: '210',
            postComment: '55',
            postShare: '15',
            postLocation: 'Los Angeles',
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const PostWidget(
            userAvatar: 'assets/images/avatar1.png',
            postText: 'I am a dog lover, I have a dog named\n'
                'Bella, she is a very cute dog, I love her very much.',
            postImage: 'assets/images/post1.png',
            userName: 'Mirabelle Swift',
            postLike: '350',
            postComment: '75',
            postShare: '14',
            postLocation: 'Paris, France',
          ),
          const SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
