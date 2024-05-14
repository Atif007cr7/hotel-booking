import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:hotel_booking/guestSide/pages/homeScreen/add_to_wishlist.dart';
import 'package:hotel_booking/guestSide/pages/propety_info.dart';
import 'package:hotel_booking/model/guestModel/home_tab1_mode.dart';

class HomeTab1 extends StatefulWidget {
  const HomeTab1({Key? key}) : super(key: key);

  @override
  State<HomeTab1> createState() => _HomeTab1State();
}

class _HomeTab1State extends State<HomeTab1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          final item = dummyData[index];

          // This variable tracks the current slide for the specific CarouselSlider
          int localCurrentIndex = 0;

          return StatefulBuilder(
            builder: (context, setLocalState) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the DetailsPage when item is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PropertyInfo(item: item),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 250,
                              aspectRatio: 16 / 9,
                              viewportFraction: 1,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              autoPlay: false,
                              autoPlayInterval: const Duration(seconds: 3),
                              enlargeCenterPage: true,
                              onPageChanged: (newIndex, reason) {
                                setLocalState(() {
                                  localCurrentIndex =
                                      newIndex; // Update this CarouselSlider's index
                                });
                              },
                            ),
                            items: item.images.map((image) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      image,
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          Positioned(
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: item.images.map((url) {
                                int dotIndex = item.images.indexOf(url);

                                return Container(
                                  width: localCurrentIndex == dotIndex
                                      ? 12.0
                                      : 8.0,
                                  height: localCurrentIndex == dotIndex
                                      ? 12.0
                                      : 8.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 4),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: localCurrentIndex == dotIndex
                                        ? Colors.red // Active dot color
                                        : Colors.black, // Inactive dot color
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          Positioned(
                              top: 10,
                              left: 10,
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return addToWishListBottomSheet();
                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                item.location,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Icon(Icons.star, size: 18, color: Colors.orange),
                            Text(item.rating,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          item.description,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      // const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              '₹${item.prise}',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            const Text(
                              ' per night',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
