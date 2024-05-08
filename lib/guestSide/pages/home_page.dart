import 'package:flutter/material.dart';
import 'package:hotel_booking/guestSide/pages/homeScreen/home_tab1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          title: const Text('Home Page'),
          bottom: const TabBar(
            labelColor: Colors.red,
            dividerColor: Colors.transparent,
            // isScrollable: true,
            labelStyle: TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400),
            indicator: ShapeDecoration(shape: Border()),
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
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(.3)),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.search_rounded,
                      size: 25,
                      color: Colors.grey,
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
          ],
        ),
      ),
    );
  }
}
