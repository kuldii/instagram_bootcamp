import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './color.dart';
import './widgets/profile_info.dart';
import './controllers/ig_controller.dart';

import './pages/page_1.dart';
import './pages/page_2.dart';
import './pages/page_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: DropDownPage(),
      routes: {
        PageSatu.routeName: (context) => PageSatu(),
        PageDua.routeName: (context) => PageDua(),
        PageTiga.routeName: (context) => PageTiga(),
      },
    );
  }
}

class DropDownPage extends StatefulWidget {
  const DropDownPage({Key? key}) : super(key: key);

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = [
    Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: DropdownSearch(
          mode: Mode.MENU,
          showClearButton: true,
          items: ["Sumanto", "Panjul", "Tugimin"],
          onChanged: (value) {},
        ),
      ),
    ),
    PageSatu(),
    PageDua(),
    PageTiga(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        fixedColor: Colors.green,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: appBlack,
            ),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.power_off,
              color: appBlack,
            ),
            label: "POWER",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: appBlack,
            ),
            label: "ADD",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.logout,
              color: appBlack,
            ),
            label: "LOGOUT",
          ),
        ],
        onTap: (value) => _onItemTapped(value),
      ),
    );
  }
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DRAWER"),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  color: Colors.amber,
                ),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
              const Text('This is \n\n\n\n\n\n\nthe Drawer'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close Drawer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  // final List<Widget> myTabs = [
  //   Tab(
  //     icon: Icon(
  //       Icons.ac_unit_outlined,
  //       color: appBlack,
  //     ),
  //   ),
  //   Tab(
  //     icon: Icon(
  //       Icons.grid_3x3,
  //       color: appBlack,
  //     ),
  //   ),
  // ];

  final igC = Get.put(IgController());

  @override
  Widget build(BuildContext context) {
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
            controller: igC.tabC,
            tabs: igC.myTabs,
            indicatorColor: appBlack,
            unselectedLabelColor: Colors.purple,
          ),
          Expanded(
            child: TabBarView(
              controller: igC.tabC,
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
