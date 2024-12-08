// import 'package:aplikasi_portofoliocr7/list_screen.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use, unused_import, camel_case_types

import 'dart:ffi';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/educationDetails.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(
                  color: Color.fromARGB(255, 245, 245, 245)),
              backgroundColor: Color.fromARGB(255, 23, 57, 207),
              centerTitle: true,
              title: Text(
                'Home',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            endDrawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: const Text(
                      'Edwin Nanlohy',
                      style: TextStyle(
                          height: 4,
                          fontSize: 20,
                          color: Color.fromARGB(
                            255,
                            255,
                            255,
                            255,
                          )),
                    ),
                    accountEmail: const Text('Edwin@gmail.com',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 255, 253, 254))),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          fit: BoxFit.cover,
                          'assets/logo1.jpg',
                          width: 70,
                        ),
                      ),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.cyan,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.pinimg.com/736x/8d/c8/39/8dc8393f9eab17c2bc5162afb9a58d46.jpg'))),
                  ),
                  ListTile(
                    leading: const Icon(FontAwesomeIcons.houseChimney),
                    title: const Text('Home'),
                    iconColor: Color.fromARGB(
                        255, 5, 187, 219), // Set the icon color here
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(FontAwesomeIcons.bookReader),
                    title: const Text('Kamus'),
                    iconColor: Color.fromARGB(255, 167, 9, 241),
                  ),
                  ListTile(
                    leading: const Icon(FontAwesomeIcons.facebook),
                    title: const Text('Facebook'),
                    iconColor: Color.fromARGB(255, 9, 33, 241),
                    onTap: () async {
                      final Uri url = Uri.parse(
                          'https://www.facebook.com/erwindo.nanlohy.1?mibextid=ZbWKwL');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url,
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  ListTile(
                    leading: const Icon(FontAwesomeIcons.instagram),
                    title: const Text('Instagram'),
                    iconColor: Color.fromARGB(255, 241, 9, 79),
                    onTap: () async {
                      final Uri url = Uri.parse(
                          'https://www.instagram.com/ewin_rnldo7/profilecard/?igsh=MWx3bDI3eHB6NDgwcQ==');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url,
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                        FontAwesomeIcons.personWalkingDashedLineArrowRight),
                    title: const Text('Logout'),
                    iconColor: Color.fromARGB(255, 235, 11, 41),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            title: const Text('Logout'),
                            content:
                                const Text('Apakah anda yakin ingin keluar?'),
                            actions: [
                              TextButton(
                                  child: const Text('Batal'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                              TextButton(
                                  child: const Text(
                                    'Keluar',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  onPressed: () {
                                    SystemNavigator.pop();
                                  }),
                            ]),
                      );
                    },
                  ),
                ],
              ),
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Portofolio',
                        speed: const Duration(milliseconds: 450),
                        textStyle: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    displayFullTextOnTap: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    radius: 125,
                    backgroundImage: AssetImage('assets/portofolio.jpg'),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Edwin Erolin Nanlohy',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.laravel,
                                  size: 22,
                                  color: const Color.fromARGB(255, 247, 18,
                                      2), // Change this to your desired color
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Web Programming',
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.locationPinLock,
                              size: 22,
                              color: Color.fromARGB(255, 247, 2, 55),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Paradise Ambon City',
                              style: TextStyle(fontSize: 22),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.twitter,
                              size: 22,
                              color: Color.fromARGB(255, 2, 39, 247),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '_nanlohyewin',
                              style: TextStyle(fontSize: 22),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.contact_mail,
                              size: 22,
                              color: Color.fromARGB(255, 31, 247, 2),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '08345672244',
                              style: TextStyle(fontSize: 22),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EducationDetails();
                      }));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Text(
                        'Education Details',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    color: Color.fromARGB(255, 44, 17, 197),
                  )
                ],
              ),
            ));
      }),
    );
  }
}

class Kamus {
  const Kamus();
}

class kamus_page {
  const kamus_page();
}
