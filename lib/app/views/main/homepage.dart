import 'package:flutter/material.dart';
import 'package:flutter_dogdom_uikit/app/constants/constants.dart';
import '../../components/post_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    setState(() {
      _tabController!.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 45,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.black38,
            tabs:const [
              Tab(
                  child: Text(
                'Select',
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
              Tab(
                child: Text('Discover'),
              ),
            ],
          ),
        ),
        actions: [
          Image.asset('assets/icons/notification.png'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Send the sample',
                              hintStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                              prefixIcon:
                                  Image.asset('assets/icons/search.png'),
                              suffixIcon: Image.asset('assets/icons/mic.png'),
                              focusedBorder: OutlineInputBorder(
                                borderSide:const
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:const
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding * 2),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset('assets/icons/ranking.png',
                                      height: 50),
                                  const SizedBox(height: 5),
                              const    Text(
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
                                  Image.asset('assets/icons/message.png',
                                      height: 50),
                                  const SizedBox(height: 5),
                                const  Text(
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
                                  Image.asset('assets/icons/cart.png',
                                      height: 50),
                                  const SizedBox(height: 5),
                               const   Text(
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: kDefaultPadding),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: MediaQuery.of(context).size.width /
                                          1.25,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(
                                            kDefaultPadding),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/dog1.png'),
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                      width: MediaQuery.of(context).size.width /
                                          1.25,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(
                                            kDefaultPadding),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/dog2.png'),
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Send the sample',
                              hintStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                              prefixIcon:
                                  Image.asset('assets/icons/search.png'),
                              suffixIcon: Image.asset('assets/icons/mic.png'),
                              focusedBorder: OutlineInputBorder(
                                borderSide:const
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:const
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding * 2),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset('assets/icons/nearby.png',
                                      height: 50),
                                  const SizedBox(height: 5),
                               const   Text(
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
                                  Image.asset('assets/icons/revelation.png',
                                      height: 50),
                                  const SizedBox(height: 5),
                               const   Text(
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
                                  Image.asset('assets/icons/care.png',
                                      height: 50),
                                  const SizedBox(height: 5),
                               const   Text(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
