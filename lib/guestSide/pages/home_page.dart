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
                text: 'Featured',
              ),
              Tab(text: 'Expensive'),
              Tab(text: 'Budget'),
              Tab(
                text: 'Party',
              )
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
                    const Text(
                      'Search your place and hotel',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
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
