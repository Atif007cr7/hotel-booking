import 'package:flutter/material.dart';
import 'package:hotel_booking/guestSide/pages/booking_page.dart';
import 'package:hotel_booking/guestSide/pages/chat_screen.dart';
import 'package:hotel_booking/guestSide/pages/homeScreen/profile_page1.dart';
import 'package:hotel_booking/guestSide/pages/home_page.dart';
import 'package:hotel_booking/guestSide/pages/profile_page.dart';
import 'package:hotel_booking/guestSide/pages/wishlist_page.dart';

class GuestAppLayout extends StatefulWidget {
  const GuestAppLayout({super.key});

  @override
  State<GuestAppLayout> createState() => _GuestAppLayoutState();
}

class _GuestAppLayoutState extends State<GuestAppLayout> {
  PageController? _pageController;
  int _currentIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  void _onBottomNavBarTap(int index) {
    _pageController?.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: const [
          HomePage(),
          WishListPage(),
          BookingPage(),
          ChatScreen(),
          Profilepage1(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: SizedBox(
          height: 55,
          child: BottomNavigationBar(
            // backgroundColor: Colors.red.withOpacity(.1),
            selectedItemColor: Colors.red,
            showUnselectedLabels: false,
            showSelectedLabels: true,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedLabelStyle:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            onTap: _onBottomNavBarTap,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/guestBottom/home.png',
                  height: 20,
                  // color: Colors.red,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/guestBottom/favourite.png',
                  height: 20,
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/guestBottom/deal.png',
                  height: 25,
                  // width: 40,
                ),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/guestBottom/chat.png',
                  height: 22,
                ),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/guestBottom/user.png',
                  height: 19,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
