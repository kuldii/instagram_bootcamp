import 'package:flutter/material.dart';

import './color.dart';
import './widgets/profile_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InstagramPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final List<Widget> myTabs = [
    Tab(
      icon: Icon(
        Icons.ac_unit_outlined,
        color: appBlack,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.grid_3x3,
        color: appBlack,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabC = TabController(length: myTabs.length, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text("Haloo"),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.amber,
          ),
          TabBar(
            controller: tabC,
            tabs: myTabs,
            indicatorColor: appBlack,
            unselectedLabelColor: Colors.purple,
          ),
          Expanded(
            child: TabBarView(
              controller: tabC,
              children: [
                Center(
                  child: Text(
                    "Tab 1",
                    style: TextStyle(
                      color: appBlack,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Tab 2",
                    style: TextStyle(
                      color: appBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InstagramPage extends StatelessWidget {
  InstagramPage({Key? key}) : super(key: key);

  final List<Widget> myTabs = [
    Tab(
      icon: Icon(
        Icons.ac_unit_outlined,
        color: appBlack,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.grid_3x3,
        color: appBlack,
      ),
    ),
  ];

  final listStories = List.generate(
      10,
      (index) => {
            "imageUrl": "https://picsum.photos/id/${index + 88}/500/500",
            "title": "Story ${index + 1}",
          });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: appWhite,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appWhite,
          title: Row(
            children: [
              Text(
                "username",
                style: TextStyle(
                  color: appBlack,
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: appBlack,
              ),
            ],
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(
                Icons.add_box_outlined,
                color: appBlack,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: appBlack,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // bagian profile info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // foto
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://picsum.photos/536/354",
                                  ),
                                ),
                                border: Border.all(
                                  color: appWhite,
                                  width: 7,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // post
                            ProfileInfo(
                              jumlah: "90",
                              title: "Posts",
                            ),
                            // follower
                            ProfileInfo(
                              jumlah: "1823",
                              title: "Followers",
                            ),
                            // following
                            ProfileInfo(
                              jumlah: "823",
                              title: "Following",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  // username
                  Text(
                    "Username",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  // info
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      text:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: TextStyle(
                        color: appBlack,
                      ),
                      children: [
                        TextSpan(
                          text: ' #hastag',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print("DIKLIK"),
                    child: Text(
                      "Link goes here",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Edit profile"),
                    ),
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: listStories
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                      e["imageUrl"]!,
                                    ),
                                  ),
                                  Text(e["title"]!),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 15),
                  TabBar(
                    tabs: myTabs,
                    indicatorColor: appBlack,
                    unselectedLabelColor: Colors.purple,
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 50,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => Image.network("https://picsum.photos/id/${index + 400}/500/500"),
            ),
          ],
        ),
      ),
    );
  }
}
