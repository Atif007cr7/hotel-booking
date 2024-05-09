// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({super.key});

  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/wishlist/images/empty_box_searching.jpg'),
          const SizedBox(height: 10),
          const Text(
            'My Wishlist is empty!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          const Text(
            "Tap heart button to start saving\nyour favorite items.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: Text(
              "Explore",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
