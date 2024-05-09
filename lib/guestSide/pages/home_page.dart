import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_booking/guestSide/pages/homeScreen/home_tab1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int? _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          title: const Text('Home Page'),
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            // indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.red.withOpacity(.5),
            unselectedLabelColor: Colors.grey,
            dividerColor: Colors.transparent,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelStyle: const TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color:
                    Colors.red.withOpacity(.5), // Color of the horizontal line
                width: 2.0, // Thickness of the horizontal line
              ),
            ),
            onTap: (index) {
              setState(() {
                _selectedTabIndex = index; // Update selected tab
              });
            },
            tabs: [
              Tab(
                child: _customTabLabel(
                    image: 'assets/guestside/homepage/tabicons/menu.png',
                    titile: 'Featured',
                    index: 0),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/villa.png',
                      titile: 'Villa',
                      index: 1),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/barn.png',
                      titile: 'Cabins',
                      index: 2),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/beach.png',
                      titile: 'Sea side',
                      index: 3),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/tower.png',
                      titile: 'Historical',
                      index: 4),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/review.png',
                      titile: 'Hotels',
                      index: 5),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/barn.png',
                      titile: 'Farms',
                      index: 6),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/cabin.png',
                      titile: 'Cabins',
                      index: 7),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image:
                          'assets/guestside/homepage/tabicons/tree-house.png',
                      titile: 'Tree House',
                      index: 8),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/island.png',
                      titile: 'Tropical',
                      index: 9),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/resort.png',
                      titile: 'island',
                      index: 10),
                ),
              ),
              Tab(
                child: Tab(
                  child: _customTabLabel(
                      image: 'assets/guestside/homepage/tabicons/bedroom.png',
                      titile: '1&2Bhk',
                      index: 11),
                ),
              ),
            ],
          ),
          actions: [
            Expanded(
              child: Container(
                height: 60,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(.3)),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.search_rounded,
                      size: 25,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Where to..?',
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Anywhere . Anyweek . Add guests',
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                // backgroundColor: Colors.red,
                radius: 20,
                child: Image.asset('assets/guestside/homepage/planet.png'),
              ),
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            HomeTab1(), // Tab 1 content
            Center(child: Text('Content for Tab 2')), // Tab 2 content
            Center(child: Text('Content for Tab 3')), // Tab 3 content
            Center(child: Text('Content for Tab 4')),
            Center(child: Text('Content for Tab 4')),
            Center(child: Text('Content for Tab 4')),
            Center(child: Text('Content for Tab 4')),
            Center(child: Text('Content for Tab 4')),
            Center(child: Text('Content for Tab 4')),
            Center(child: Text('Content for Tab 4')),
            Center(child: Text('Content for Tab 4')),
            Center(child: Text('Content for Tab 4')),
          ],
        ),
      ),
    );
  }

  Column _customTabLabel({
    String? image,
    String? titile,
    int? index,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image ?? '',
          height: 20,
          color: _selectedTabIndex == index
              ? Colors.red.withOpacity(.5) // Selected tab color
              : Colors.grey,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(titile ?? '')
      ],
    );
  }
}
