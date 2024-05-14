import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
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
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        const Text(
                            'Build in the 19th century, with a 360 degree view over the sea and surrounding on the top floor. \n it features a Bedroom with a king size bed , a very weill-decorated living room with kitvhenette , and a Wc.\n Free Wifi, air Conditioning , Led tv and DvD player ...'),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            _seeMoreAboutThisPlace(context),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Colors.black,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: .2,
                    height: 30,
                  ),
                  Text(
                    'Where you\'ll sleep',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/guestside/homepage/propertyinfo/bedtosleep.jpg',
                                height: 100,
                              ),
                            ),
                            Text(
                              'Bedroom',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '1 double bed',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/guestside/homepage/propertyinfo/childbed.jpg',
                                height: 100,
                              ),
                            ),
                            Text(
                              'Child Room',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '1 child bed',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: .2,
                    height: 30,
                  ),
                  Text(
                    'What this place offers',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _aminitiesOnMainPage(
                      image:
                          'assets/guestside/homepage/propertyinfo/hottub.png',
                      name: 'Hot tub'),
                  _aminitiesOnMainPage(
                      image: 'assets/guestside/homepage/propertyinfo/tv.png',
                      name: 'Smart t.v'),
                  _aminitiesOnMainPage(
                      image: 'assets/guestside/homepage/propertyinfo/wifi.png',
                      name: 'Wifi'),
                  _aminitiesOnMainPage(
                      image: 'assets/guestside/homepage/propertyinfo/iron.png',
                      name: 'Iron'),
                  _aminitiesOnMainPage(
                      image: 'assets/guestside/homepage/propertyinfo/towel.png',
                      name: 'Towel'),
                  _aminitiesOnMainPage(
                      image:
                          'assets/guestside/homepage/propertyinfo/wardrob.png',
                      name: 'Clothing space'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _aminitiesOnMainPage({
    String? image,
    String? name,
  }) {
    return Row(
      children: [
        Image.asset(
          image ?? '',
          height: 30,
        ),
        SizedBox(
          width: 20,
        ),
        Text(name ?? '')
      ],
    );
  }

  GestureDetector _seeMoreAboutThisPlace(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          useSafeArea: true,
          context: context,
          builder: (context) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.close),
                  Text(
                    'About this space',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Text(
                      'Build in the 19th century, with a 360 degree view over the sea and surrounding on the top floor. \n it features a Bedroom with a king size bed , a very weill-decorated living room with kitvhenette , and a Wc.\n Free Wifi, air Conditioning , Led tv and DvD player Private parking inside the premises , providing extra security . \n Perfect for a unforgettable honeymoon experiences '),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The space',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                      'it has a 4000m garden with sub-tropical fruits tress, garden trees , and a flower. \n in additional to the mill ideal for 2 people , it has two more accomocation units : the modes cimas House ideal up to 3 people and the Molerios House that hold up to 4 people .'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Guest access',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text('Guest have access to all property spaces '),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Registration numbers',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text('Exempt')
                ],
              ),
            );
          },
        );
      },
      child: const Text(
        'Show more',
        style: TextStyle(
            decoration: TextDecoration.underline, fontWeight: FontWeight.w500),
      ),
    );
  }
}
