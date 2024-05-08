import 'package:flutter/material.dart';

class HomeTab1 extends StatefulWidget {
  const HomeTab1({super.key});

  @override
  State<HomeTab1> createState() => _HomeTab1State();
}

class _HomeTab1State extends State<HomeTab1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(),
              child: Image.asset('assets/guestside/hotelimage/img9.jpg'),
            ),
            const Row(
              children: [
                Expanded(
                    child: Text(
                  'Mumbai, Maharashtra',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )),
                Icon(
                  Icons.star,
                  size: 18,
                ),
                Text(
                  '4.3',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'Amazing bedroom with pool bathrrom',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Text(
                  '₹12,000/-',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text('  Night',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
