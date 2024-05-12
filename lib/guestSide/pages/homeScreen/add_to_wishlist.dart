// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddToWishlist extends StatefulWidget {
  const AddToWishlist({super.key});

  @override
  State<AddToWishlist> createState() => _AddToWishlistState();
}

class _AddToWishlistState extends State<AddToWishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.cancel_outlined),
              ),
              const SizedBox(width: 10),
              Text("Add to Wishlist"),
            ],
          ),
          const SizedBox(height: 120),
          const Divider(),
          ElevatedButton(
            onPressed: () {
              addToWishListBottomSheet();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: Text(
              'Create Wishlist',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class addToWishListBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Create Wish List',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Wish List Name',
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: InkWell(
              onTap: () {
                // Add logic to clear text field
              },
              child: Text(
                'Clear',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                // Add logic to create wish list
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: Text(
                'Create',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
