import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hotel_booking/model/guestModel/home_tab1_mode.dart';

class PropertyInfo extends StatefulWidget {
  final HomeTabModel item;

  const PropertyInfo({Key? key, required this.item}) : super(key: key);

  @override
  _PropertyInfoState createState() => _PropertyInfoState();
}

class _PropertyInfoState extends State<PropertyInfo> {
  int _currentImageIndex = 0; // To track the current image index

  @override
  Widget build(BuildContext context) {
    final item = widget.item;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 250,
            // stretch: true,
            scrolledUnderElevation: 100,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 350,
                      aspectRatio: 16 / 9,
                      // autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentImageIndex =
                              index; // Update the current index
                        });
                      },
                    ),
                    items: item.images.map((image) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Image.asset(
                            image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        '${_currentImageIndex + 1} / ${item.images.length}', // Show the total number of images and current index
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: item.images.map((url) {
                        int index = item.images.indexOf(url);
                        return Container(
                          width: _currentImageIndex == index ? 10.0 : 6.0,
                          height: _currentImageIndex == index ? 10.0 : 6.0,
                          margin: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 4.0,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentImageIndex == index
                                ? Colors.white
                                : Colors.grey,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Positioned(
                      top: 30,
                      right: 60,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.share,
                            size: 20,
                            color: Colors.black,
                          ))),
                  Positioned(
                      top: 30,
                      right: 12,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.favorite,
                            size: 20,
                            color: Colors.red,
                          ))),
                  Positioned(
                      top: 30,
                      left: 12,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ))),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.propetyDescriptiom,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(item.location,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                  const Text('6 guest . 2 bedrooms . 2beds . 2 bathrooms',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Text('${item.rating} review')
                    ],
                  ),
                  const Divider(
                    thickness: .2,
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        // backgroundColor: Colors.red,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/guestside/homepage/host.jpg',
                            fit: BoxFit.fitHeight,
                            height: 200,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        children: [
                          Text(
                            'Hosted by Atif Ansari',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '1 years hosting',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    thickness: .2,
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
