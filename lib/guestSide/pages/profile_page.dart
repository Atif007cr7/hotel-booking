import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          _profileCard(),
          const SizedBox(
            height: 10,
          ),
          _legalDocuments(),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              _menuListTile(
                Icons: Icons.settings,
                title: 'Setting',
                subtitle: 'Click here to change App setting',
              ),
            ],
          ),
          const ListTile(
            leading: Icon(
              Icons.logout,
              size: 30,
            ),
            title: Text(
              'Log Out',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              'Click here to logOut your iD',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          )
        ],
      )),
    );
  }

  Container _menuListTile({
    String? title,
    String? subtitle,
    IconData? Icons,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: Icon(
          Icons,
          size: 30,
        ),
        title: Text(
          title ?? '',
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subtitle ?? '',
          style: TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.w300),
        ),
        // trailing: Icon(
        //   Icons,
        //   size: 18,
        // ),
      ),
    );
  }

  Padding _legalDocuments() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/guestside/profilepage/database.png',
                height: 40,
                color: Colors.black.withOpacity(.7),
              ),
              const Text(
                'Hosting Property',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/guestside/profilepage/credit-card.png',
                height: 40,
                color: Colors.black.withOpacity(.7),
              ),
              const Text(
                'Payments',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/guestside/profilepage/documents-folder.png',
                height: 40,
                color: Colors.black.withOpacity(.7),
              ),
              const Text(
                'Documents',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _profileCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            // color: Colors.black.withOpacity(.7),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(.7),
              Colors.black.withOpacity(.6)
            ]),
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.yellow,
                  child: ClipOval(
                    child:
                        Image.asset('assets/guestside/profilepage/avtar.webp'),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ansari Atif',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'codewithatif@gmai.com',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_sharp,
                          size: 16,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black.withOpacity(.3)),
                  child: const Text(
                    'Host & Guest ',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            const Divider(
              thickness: .4,
              color: Colors.grey,
            ),
            const Row(
              children: [
                Icon(
                  Icons.verified,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Certified User',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
