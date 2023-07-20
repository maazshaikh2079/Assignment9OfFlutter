// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instaeco/screens/login_page.dart';

// class MyDrawer extends StatelessWidget {
//   const MyDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//         child: Container(
//             height: double.infinity,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//               colors: [Colors.white, Colors.white, Colors.white],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             )),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ListView(
//                 children: [
//                   DrawerHeader(
//                     padding: EdgeInsets.zero,
//                     child: UserAccountsDrawerHeader(
//                         accountName: Text(
//                           "Maaz Shaikh",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 15),
//                         ),
//                         accountEmail: Text(
//                           "maazshaikh2079@gmail.com",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 13),
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.greenAccent,
//                           borderRadius: BorderRadius.only(
//                               bottomRight: Radius.circular(10),
//                               topLeft: Radius.circular(10),
//                               topRight: Radius.circular(10),
//                               bottomLeft: Radius.circular(10)),
//                         ),
//                         currentAccountPicture: CircleAvatar(
//                             backgroundImage: NetworkImage(
//                                 "https://i.ibb.co/vHpxsK2/Formal-infront-dias.jpg"))),
//                   ),
//                   ListTile(
//                     leading: Icon(
//                       Icons.account_circle_outlined,
//                       color: Colors.black,
//                     ),
//                     title: Text(
//                       "Profile",
//                       textScaleFactor: 1.2,
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(
//                       CupertinoIcons.bell,
//                       color: Colors.black,
//                     ),
//                     title: Text(
//                       "Notifications",
//                       textScaleFactor: 1.2,
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(
//                       CupertinoIcons.star,
//                       color: Colors.black,
//                     ),
//                     title: Text(
//                       "Favourite",
//                       textScaleFactor: 1.2,
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(
//                       CupertinoIcons.clock,
//                       color: Colors.black,
//                     ),
//                     title: Text(
//                       "History",
//                       textScaleFactor: 1.2,
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(
//                       CupertinoIcons.settings_solid,
//                       color: Colors.black,
//                     ),
//                     title: Text(
//                       "Settings",
//                       textScaleFactor: 1.2,
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(
//                       CupertinoIcons.phone,
//                       color: Colors.black,
//                     ),
//                     title: Text(
//                       "Contact Us",
//                       textScaleFactor: 1.2,
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 13.5),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(
//                       CupertinoIcons.power,
//                       color: Colors.black,
//                     ),
//                     title: Text(
//                       "Log Out",
//                       textScaleFactor: 1.2,
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 13.5),
//                     ),
//                   ),
//                 ],
//               ),
//             )));
//   }
// }

class MyDrawer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  "maazshaikh2079@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/njvMkpw/Formal-infront-dias-rbg.png",
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.profile_circled,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Profile",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      // Handle Profile onTap
                    },
                    splashColor: Colors.greenAccent, // Add splashColor property
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.home,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Home",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                      // Handle Home onTap
                    },
                    splashColor: Colors.greenAccent, // Add splashColor property
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.cart,
                      color: Colors.black,
                    ),
                    title: Text(
                      "My Cart",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      // Handle My Cart onTap
                    },
                    splashColor: Colors.greenAccent, // Add splashColor property
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.square_favorites,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Favorites",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      // Handle Favorites onTap
                    },
                    splashColor: Colors.greenAccent, // Add splashColor property
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.folder,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Drafts",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      // Handle Drafts onTap
                    },
                    splashColor: Colors.greenAccent, // Add splashColor property
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.settings,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Settings",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      // Handle Settings onTap
                    },
                    splashColor: Colors.greenAccent, // Add splashColor property
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_right,
                color: Colors.black,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false);
                // Handle Logout onTap
              },
              splashColor: Colors.greenAccent, // Add splashColor property
            ),
          ],
        ),
      ),
    );
  }
}
