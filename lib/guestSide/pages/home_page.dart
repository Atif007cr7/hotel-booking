import 'package:flutter/material.dart';
import 'package:hotel_booking/guestSide/pages/homeScreen/home_tab1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0; // Initialize to zero for the first tab

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          title: const Text('Home Page'),
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            labelColor: Colors.red.withOpacity(0.5),
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            onTap: (index) {
              setState(() {
                _selectedTabIndex = index; // Correctly update the selected tab
              });
            },
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Colors.red.withOpacity(0.5),
                width: 2.0,
              ),
            ),
            tabs: _buildTabs(), // Custom method to build tab items
          ),
          actions: [
            _buildSearchBox(),
            _buildAvatar(),
          ],
        ),
        body: TabBarView(
          children: [
            HomeTab1(), // Tab 1 content
            for (var i = 1; i < 11; i++)
              Center(child: Text('Content for Tab ${i + 1}')),
          ],
        ),
      ),
    );
  }

  List<Tab> _buildTabs() {
    var tabData = [
      {'image': 'menu.png', 'title': 'Featured'},
      {'image': 'barn.png', 'title': 'Barns'},
      {'image': 'beach.png', 'title': 'Beach'},
      {'image': 'bedroom.png', 'title': '1&2Bhk'},
      {'image': 'cabin.png', 'title': 'Cabin'},
      {'image': 'island.png', 'title': 'Sea side'},
      {'image': 'resort.png', 'title': 'Resort'},
      {'image': 'review.png', 'title': 'Hotel'},
      {'image': 'tower.png', 'title': 'Historical'},
      {'image': 'tree-house.png', 'title': 'Tree house'},
      {'image': 'villa.png', 'title': 'Villa'},
    ];

    return tabData.map((tab) {
      var image = 'assets/guestside/homepage/tabicons/${tab['image']}';
      var title = tab['title'];

      return Tab(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 20,
              color: _selectedTabIndex == tabData.indexOf(tab)
                  ? Colors.red.withOpacity(0.5) // Selected tab color
                  : Colors.grey,
            ),
            SizedBox(height: 2),
            Text(
              title ?? '',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }).toList();
  }

  Widget _buildSearchBox() {
    return Expanded(
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search_rounded,
              size: 25,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            const Text(
              'Search your place and hotel',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: CircleAvatar(
        radius: 20,
        child: Image.asset('assets/guestside/homepage/planet.png'),
      ),
    );
  }
}
