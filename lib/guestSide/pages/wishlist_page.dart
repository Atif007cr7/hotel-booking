import 'package:flutter/material.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  bool _isEditing = false; // Track whether editing mode is active

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isEditing = !_isEditing; // Toggle editing mode
                });
              },
              child: Text(
                _isEditing ? 'Done' : 'Edit',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WishLists',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2 / 2.5, // Aspect ratio of 2:1
                ),
                itemCount: 10, // Number of wish list items
                itemBuilder: (context, index) {
                  return _buildWishListItem(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWishListItem(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Material(
              shadowColor: Colors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: EdgeInsets.all(2),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/guestside/hotelimage/img${index + 1}.jpg', // Assuming your images are named as img1.jpg, img2.jpg, etc.
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: _isEditing, // Show delete icon only in editing mode
              child: Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.close,
                    size: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Amazing views 2024', // Assuming same title for all items, you can replace with dynamic data
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Text(
          '1 saved', // Assuming same saved count for all items, you can replace with dynamic data
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
