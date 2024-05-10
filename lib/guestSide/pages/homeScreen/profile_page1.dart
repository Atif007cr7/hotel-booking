import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profilepage1 extends StatefulWidget {
  const Profilepage1({super.key});

  @override
  State<Profilepage1> createState() => _Profilepage1State();
}

class _Profilepage1State extends State<Profilepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titleandnotiy(),
            _profilephoto(),
            _cardforhosting(),
            _settingsListTile(),
            _hostingListTile(),
            _referListTile(),
            _supportListTile(),
            _legaldocumentsListTile(),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
          width: 250,
          child: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: Colors.black.withOpacity(.7),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.wifi,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Switch to hosting',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          )),
    );
  }

  Column _legaldocumentsListTile() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 25),
          child: Text(
            'Legal',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.document_scanner),
          title: Text('Terms of Services',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.document_scanner),
          title: Text('Privacy Policy',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.document_scanner),
          title: Text('Open source licences',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
      ],
    );
  }

  Column _supportListTile() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 25),
          child: Text(
            'Support',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.question_mark),
          title: Text('Visit the Help Center',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.support),
          title: Text('Get help with a saftey issue',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.support_agent),
          title: Text('Report a neighbourhood concern',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.logo_dev),
          title: Text('How our App works',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.edit),
          title: Text('Give us feedback',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
      ],
    );
  }

  Column _referListTile() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 25),
          child: Text(
            'Referrals & Credits',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.card_giftcard),
          title: Text('List your space',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          subtitle: Text(
            'Earn \$15 for every new host you refer',
            style: TextStyle(
                fontSize: 10, color: Colors.grey, fontWeight: FontWeight.w300),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
      ],
    );
  }

  Column _hostingListTile() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 25),
          child: Text(
            'Hosting',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('List your space',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Your guidebooks',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
      ],
    );
  }

  Column _settingsListTile() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 25),
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person_2_outlined),
          title: Text('Personal information',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.payment),
          title: Text('Payments and payouts',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.dashboard_customize_rounded),
          title: Text('Taxes',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.security),
          title: Text('Login & security',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.settings_accessibility),
          title: Text('Accessibility',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.translate),
          title: Text('Translation',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifications',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text('Privacy and sharing',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          thickness: .4,
          height: .5,
        )
      ],
    );
  }

  Padding _cardforhosting() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Material(
        color: Colors.white,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        child: Container(
          height: 95,
          color: Colors.white,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Airbnb your place',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'it\'s simple to get set up and \n star earning',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const Spacer(),
              Image.asset(
                'assets/guestside/profilepage/homep.jpg',
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _profilephoto() {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 20, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            // backgroundColor: Colors.black,
            radius: 40,
            child: ClipOval(
              child: Image.asset(
                'assets/guestside/profilepage/avtar.webp',
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ansari Atif',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                'Show profile',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ],
      ),
    );
  }

  Padding _titleandnotiy() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60, right: 20, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Image.asset(
                'assets/guestside/profilepage/notification.png',
                height: 25,
                color: Colors.black,
              )
            ],
          ),
        ],
      ),
    );
  }
}
