import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool havingbooking = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: true,
          child:
              havingbooking == true ? _bookingPage(context) : _noBookingPage()),
    );
  }

  Column _bookingPage(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Text(
            'Booking',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
          child: Text(
            'Upcoming reservations',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Material(
            elevation: 10,
            shadowColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            'assets/guestside/hotelimage/img5.jpg',
                            fit: BoxFit.cover,
                          )),
                    ),
                    Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.9),
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: const Text(
                              'In 2 days',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            )))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Joshua Tree',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'Entire dome hosted by Ansari Atif and Mateen',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      const Divider(
                        thickness: .4,
                      ),
                      Row(
                        children: [
                          const Text('Aug \n 1- 15 \n 2023'),
                          const SizedBox(
                              width:
                                  10), // Add some spacing between the texts and the divider
                          Container(
                            height: 50, // Match the height of the row
                            width: 1, // Width of the vertical divider
                            color: Colors.grey, // Color of the divider
                          ),
                          const SizedBox(
                              width:
                                  10), // Add some spacing between the divider and the texts
                          const Text(
                            '24 Deserrt Ave. \n Joshua Tree , CA \n United States',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: .4,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time_filled_outlined,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your check in details :',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Getting there , getting inside, and wifi.',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding _noBookingPage() {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Booking',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          const Divider(
            thickness: .4,
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 11),
            child: Text(
              'No Booking .. till now!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
                'Time to dust off your bags and start planning your next adventure.'),
          ),
          Container(
            width: 170,
            margin: const EdgeInsets.only(top: 20, bottom: 10),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'Start searching',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          const Divider(
            thickness: .4,
            height: 20,
          ),
          const Row(
            children: [
              Text(
                'Can\'t find your reservation here? ',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'Visit the Help Center',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline),
              )
            ],
          )
        ],
      ),
    );
  }
}
